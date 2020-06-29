import 'package:flutter/material.dart';
import 'package:habits/presentation/constants.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class CustomProgressIndicator extends StatefulWidget {
  @override
  _CustomProgressIndicatorState createState() =>
      _CustomProgressIndicatorState();
}

class _CustomProgressIndicatorState extends State<CustomProgressIndicator> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 50.0,
            width: 50.0,
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
                  height: 20.0,
                  width: 50.0,
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
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 10.0,
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
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          _buildProgressIndicator(),
        ],
      ),
    );
  }

  Widget _buildProgressIndicator() {
    // final double totalHabits = habits.length.toDouble();
    // final double completedHabits =
    //     habits.where((habit) => habit.done == true).length.toDouble();
    // final double percent =
    //     totalHabits == completedHabits ? 1.0 : completedHabits / totalHabits;
    // final bool displayProgress = totalHabits != 0.0;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          '40 % ',
          style: TextStyle(
            fontSize: 25.0,
            fontFamily: 'Montserrat',
            color: Colors.black54,
          ),
        ),
        const Text(
          'Completion',
          style: TextStyle(
            fontSize: 10.0,
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
          percent: 0.4,
          progressColor: kYellow,
        ),
      ],
    );
  }
}
