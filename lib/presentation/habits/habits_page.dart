import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habits/application/habits/habit_actor/habit_actor_bloc.dart';
import 'package:habits/application/habits/habit_watcher/habit_watcher_bloc.dart';
import 'package:habits/domain/habits/habit.dart';
import 'package:habits/domain/user/user.dart';
import 'package:habits/presentation/constants.dart';
import 'package:habits/presentation/habits/add_habit_page.dart';
import 'package:habits/presentation/habits/widgets/circular_progress_indicator.dart';
import 'widgets/habit_card.dart';
import 'widgets/progress_indicator.dart';

class HabitsPage extends StatefulWidget {
  final User user;

  const HabitsPage({Key key, this.user}) : super(key: key);

  @override
  _HabitsPageState createState() => _HabitsPageState();
}

class _HabitsPageState extends State<HabitsPage> {
  DateTime currentSelectedDate = DateTime.now();

  void onDateChange(DateTime dateTime) {
    currentSelectedDate = dateTime;
    context
        .bloc<HabitWatcherBloc>()
        .add(HabitWatcherEvent.watchAll(currentSelectedDate));
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HabitWatcherBloc, HabitWatcherState>(
      listener: (context, state) {},
      builder: (context, state) {
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
                    child: AddTaskScreen(user: widget.user),
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
                      Positioned(
                        top: 50,
                        left: 20,
                        right: 20,
                        child: CustomProgressIndicator(),
                      ),
                      Theme(
                        data: ThemeData(
                          canvasColor: Colors.transparent,
                          cardColor: Colors.transparent,
                        ),
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(0, 150, 0, 0),
                          child: state.when(
                            initial: () {
                              context.bloc<HabitWatcherBloc>().add(
                                  HabitWatcherEvent.initializeUser(
                                      widget.user));
                              context.bloc<HabitActorBloc>().add(
                                  HabitActorEvent.initializeUser(widget.user));
                              context.bloc<HabitWatcherBloc>().add(
                                  HabitWatcherEvent.watchAll(
                                      currentSelectedDate));
                              return Container();
                            },
                            loadInProgress: () {
                              return CircularProgressBar();
                            },
                            loadSuccess: (habits) {
                              return _buildHabitCards(
                                  habits, currentSelectedDate);
                            },
                            loadFailure: (f) {
                              return f.map(
                                unexpected: (_) => Container(),
                                noHabitsFound: (_) => Container(),
                                noCategorySelected: (_) =>
                                    CircularProgressBar(),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildHabitCards(List<HabitItem> habits, DateTime dateTime) {
    return Column(
        children: habits
            .map((habit) => HabitCard(
                  habit: habit,
                  user: widget.user,
                  dateTime: dateTime,
                ))
            .toList());
  }
}
