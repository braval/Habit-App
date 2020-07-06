import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habits/application/habits/habit_watcher/habit_watcher_bloc.dart';
import 'package:habits/domain/habits/habit.dart';
import 'package:habits/presentation/core/lifecycle_handler.dart';
import 'package:habits/presentation/habits/widgets/circular_progress_indicator.dart';
import 'widgets/habit_card.dart';
import 'widgets/progress_indicator.dart';

class HabitsPage extends StatefulWidget {
  @override
  _HabitsPageState createState() => _HabitsPageState();
}

class _HabitsPageState extends State<HabitsPage> {
  DateTime currentSelectedDate = DateTime.now();

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(
      LifecycleEventHandler(
        resumeCallBack: () async => setState(
          () {
            currentSelectedDate = DateTime.now();
            context
                .bloc<HabitWatcherBloc>()
                .add(HabitWatcherEvent.watchAll(currentSelectedDate));
          },
        ),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HabitWatcherBloc, HabitWatcherState>(
      listener: (context, state) {},
      builder: (context, state) {
        return SafeArea(
          child: ListView(
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
                child: state.maybeMap(
                  loadSuccess: (habits) {
                    return CustomProgressIndicator(
                      habits: habits.habits,
                    );
                  },
                  orElse: () => const CustomProgressIndicator(
                    habits: [],
                  ),
                ),
              ),
              Theme(
                data: ThemeData(
                  canvasColor: Colors.transparent,
                  cardColor: Colors.transparent,
                ),
                child: Container(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: state.when(
                    initial: () {
                      context
                          .bloc<HabitWatcherBloc>()
                          .add(HabitWatcherEvent.watchAll(currentSelectedDate));
                      return Container();
                    },
                    loadInProgress: () {
                      return CircularProgressBar();
                    },
                    loadSuccess: (habits) {
                      return _buildHabitCards(habits, currentSelectedDate);
                    },
                    loadFailure: (f) {
                      return f.map(
                        unexpected: (_) => Container(),
                        habitAlreadyExists: (_) => Container(),
                        noHabitsFound: (_) => Container(),
                        noCategorySelected: (_) => CircularProgressBar(),
                      );
                    },
                  ),
                ),
              ),
            ],
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
                  dateTime: dateTime,
                ))
            .toList());
  }
}
