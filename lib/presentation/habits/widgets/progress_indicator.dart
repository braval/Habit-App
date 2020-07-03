import 'package:flutter/material.dart';
import 'package:habits/domain/habits/habit.dart';
import 'package:habits/presentation/constants.dart';
import 'package:intl/intl.dart';
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
        : Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 60.0,
                width: 60.0,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      blurRadius: 1,
                      offset: const Offset(1, 4), // changes position of shadow
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 25.0,
                      decoration: const BoxDecoration(
                        color: kYellow,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0)),
                      ),
                      child: Center(
                        child: Text(
                          DateFormat("MMM").format(DateTime.now()),
                          style: const TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.black54,
                            fontWeight: FontWeight.w700,
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 6.0),
                      child: Center(
                        child: Text(
                          DateFormat("d").format(DateTime.now()),
                          style: const TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.grey,
                            fontWeight: FontWeight.w700,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              _buildProgressIndicator(widget.habits),
            ],
          );
  }

  Widget _buildProgressIndicator(List<HabitItem> habits) {
    final double totalHabits = habits.length.toDouble();
    final double completedHabits =
        habits.where((habit) => habit.done == true).length.toDouble();
    final double percent =
        totalHabits == completedHabits ? 1.0 : completedHabits / totalHabits;

    return Column(
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
          style: TextStyle(
            fontSize: 15.0,
            fontFamily: 'Montserrat',
            color: Colors.black54,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        LinearPercentIndicator(
          width: 200.0,
          lineHeight: 8.0,
          percent: percent,
          progressColor: kCompleteProgressBarColor,
        ),
      ],
    );
  }
}
