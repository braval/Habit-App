import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habits/domain/core/value_objects.dart';
import 'package:habits/domain/habits/habit.dart';
import 'package:habits/domain/habits/value_objects.dart';
import 'package:habits/presentation/constants.dart';
import 'package:habits/presentation/core/header_widget.dart';
import 'package:habits/presentation/habits/add_habit_page.dart';
import 'package:habits/presentation/habits/widgets/circular_progress_indicator.dart';

import 'widgets/date_picker.dart';
import 'widgets/habit_card.dart';
import 'widgets/popup_menu.dart';
import 'widgets/progress_indicator.dart';

class HabitsPage extends StatefulWidget {
  @override
  _HabitsPageState createState() => _HabitsPageState();
}

class _HabitsPageState extends State<HabitsPage> {
  DateTime _selectedValue = DateTime.now();

  @override
  void initState() {
    super.initState();
  }

  void onDateChange(date) {
    // New date selected
    setState(
      () {
        _selectedValue = date as DateTime;
        print(date);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
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
                child: AddTaskScreen(),
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
                    child: CustomProgressIndicator(),
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
                      // child: BlocConsumer<HabitListBloc, HabitListState>(
                      //   listener: (context, state) {
                      //     state.habitFailureOrSuccessOption.fold(() => null, (either) => either.fold((l) => null, (r) => null))
                      //   },
                      //   builder: (context, state) {
                      //     // TODO: handle error state.
                      //     return state.isSubmitting
                      //         ? CircularProgressBar()
                      //         : BuildHabitList();
                      //   },
                      // ),
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

class BuildHabitList extends StatefulWidget {
  @override
  _BuildHabitListState createState() => _BuildHabitListState();
}

class _BuildHabitListState extends State<BuildHabitList> {
  Widget nextView;

  List<HabitCard> habits = [
    HabitCard(
      habit: HabitItem(
        id: UniqueId(),
        name: HabitName('Meditation'),
        category: HabitCategoryName('Health'),
        totalCount: 2,
        currentCount: 1,
        done: false,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: habits,
    );
    // return BlocBuilder<HabitListBloc, HabitListState>(
    //   builder: (context, state) {
    //     return state.when(
    //       initial: () {
    //         nextView = CircularProgressBar();
    //       },
    //       busy: () {
    //         nextView = CircularProgressBar();
    //       },
    //       userFetched: (user) {
    //         nextView = Column(
    //           children: habits,
    //         );
    //       },
    //       error: () {
    //         //TODO: Handle this
    //       },
    //     );
    //     return nextView;
    //   },
    // );
  }
}
