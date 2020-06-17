import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habits/application/habits/habit_watcher/habit_watcher_bloc.dart';
import 'package:habits/domain/core/value_objects.dart';
import 'package:habits/domain/habits/habit.dart';
import 'package:habits/domain/habits/value_objects.dart';
import 'package:habits/domain/user/user.dart';
import 'package:habits/injection.dart';
import 'package:habits/presentation/constants.dart';
import 'package:habits/presentation/core/header_widget.dart';
import 'package:habits/presentation/habits/add_habit_page.dart';
import 'package:habits/presentation/habits/widgets/circular_progress_indicator.dart';

import 'widgets/date_picker.dart';
import 'widgets/habit_card.dart';
import 'widgets/popup_menu.dart';
import 'widgets/progress_indicator.dart';

class HabitsPage extends StatelessWidget {
  final User user;

  const HabitsPage({Key key, this.user}) : super(key: key);

  void onDateChange(date) {
    print(date);
  }

  @override
  Widget build(BuildContext context) {
    getIt<HabitWatcherBloc>()
      ..add(HabitWatcherEvent.initializeUser(user))
      ..add(HabitWatcherEvent.watchAll(DateTime.now()));
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: kBackground,
      floatingActionButton: FloatingActionButton(
        backgroundColor: kYellow,
        mini: true,
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40.0),
            ),
            context: context,
            builder: (BuildContext context) => SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: AddTaskScreen(user: user),
              ),
            ),
            backgroundColor: Colors.white,
          );
        },
        child: const Icon(Icons.add),
      ),
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: SafeArea(
          child: ListView(
            children: [
              Stack(
                overflow: Overflow.visible,
                children: [
                  Header(),
                  Positioned(
                    top: 40.0,
                    right: 10.0,
                    child: PopupMenu(),
                  ),
                  Positioned(
                    top: 250.0,
                    left: 25.0,
                    right: 25.0,
                    child: CustomProgressIndicator(user: user),
                  ),
                  Positioned(
                    top: 350.0,
                    left: 25.0,
                    right: 25.0,
                    child: CustomDatePicker(onDateChange),
                  ),
                  Theme(
                    data: ThemeData(
                      canvasColor: Colors.transparent,
                      cardColor: Colors.transparent,
                    ),
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(0, 450, 0, 0),
                      child: BuildHabitList(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// @override
// void didChangeDependencies() {
//   super.didChangeDependencies();
//   getIt<HabitWatcherBloc>()
//     ..add(HabitWatcherEvent.initializeUser(widget.user))
//     ..add(HabitWatcherEvent.watchAll(DateTime.now()));
// }

class BuildHabitList extends StatefulWidget {
  @override
  _BuildHabitListState createState() => _BuildHabitListState();
}

class _BuildHabitListState extends State<BuildHabitList> {
  final List<HabitCard> habits = [
    HabitCard(
      habit: HabitItem(
        id: UniqueId(),
        name: HabitName('Gym'),
        category: HabitCategoryName('Health'),
        totalCount: 2,
        currentCount: 1,
        done: false,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    Widget nextView;

    return BlocBuilder<HabitWatcherBloc, HabitWatcherState>(
      builder: (context, state) {
        state.map(
          initial: (_) {
            print("initial");
            nextView = CircularProgressBar();
          },
          loadInProgress: (_) {
            print("loadInProgress");

            nextView = CircularProgressBar();
          },
          loadSuccess: (e) {
            print(e.habits);
            print("loadSuccess");

            nextView = CircularProgressBar();
          },
          loadFailure: (_) {
            print("loadFailure");

            nextView = CircularProgressBar();
          },
        );
        return nextView;
      },
    );
  }
}
