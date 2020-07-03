import 'package:flutter/material.dart';
import 'package:habits/domain/habits/habit.dart';
import 'package:habits/presentation/constants.dart';
import 'package:habits/presentation/habits/constants.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class CustomProgressIndicator extends StatefulWidget {
  final List<HabitItem> habits;
  const CustomProgressIndicator({@required this.habits});

  @override
  _CustomProgressIndicatorState createState() =>
      _CustomProgressIndicatorState();
}

class _CustomProgressIndicatorState extends State<CustomProgressIndicator> {
  @override
  Widget build(BuildContext context) {
    return widget.habits.isEmpty
        ? Container()
        : _buildProgressIndicator(widget.habits);
  }

  Widget _buildProgressIndicator(List<HabitItem> habits) {
    final double totalHabits = habits.length.toDouble();
    final double completedHabits =
        habits.where((habit) => habit.done == true).length.toDouble();
    final double percent =
        totalHabits == completedHabits ? 1.0 : completedHabits / totalHabits;

    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '${(percent * 100).toInt()} % ',
            style: const TextStyle(
              fontSize: 35.0,
              fontFamily: 'Montserrat',
              color: Colors.black54,
            ),
          ),
          const Text(
            'Completion',
            style: kIcompleteHabitSubtitleTextStyle,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: LinearPercentIndicator(
              lineHeight: 8.0,
              percent: percent,
              progressColor: kCompleteProgressBarColor,
            ),
          ),
        ],
      ),
    );
  }
}
