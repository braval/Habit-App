import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habits/application/user/user_info_bloc.dart';
import 'package:habits/domain/user/user.dart';
import 'package:habits/presentation/constants.dart';
import 'package:habits/presentation/habits/constants.dart';
import 'package:habits/presentation/habits/widgets/circular_progress_indicator.dart';
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
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            blurRadius: 4, // changes position of shadow
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
      ),
      height: 85,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 40.0,
            width: 40.0,
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
                  height: 15.0,
                  width: 40.0,
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
                  padding: const EdgeInsets.only(top: 4.0),
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
}

Widget _buildProgressIndicator() {
  return BlocBuilder<UserInfoBloc, UserInfoState>(
    builder: (context, state) {
      var busy = false;
      User user;
      state.map(
        initial: (_) {
          busy = true;
        },
        busy: (_) {
          busy = true;
        },
        userFetched: (UserFetched userFetched) {
          user = userFetched.user;
          busy = false;
        },
        error: (userOption) {
          // TODO: Handle error state.
          busy = true;
        },
      );

      return busy
          ? CircularProgressBar()
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${user.firstName.getOrCrash()}, you have completed 2 tasks for today',
                  style: kHabitSubtitleTextStyle,
                ),
                const SizedBox(
                  height: 10,
                ),
                LinearPercentIndicator(
                  width: 100.0,
                  lineHeight: 8.0,
                  percent: 0.8,
                  progressColor: Colors.green,
                ),
              ],
            );
    },
  );
}
