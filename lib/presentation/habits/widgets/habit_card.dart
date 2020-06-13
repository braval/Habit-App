import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:habits/presentation/constants.dart';
import 'package:habits/presentation/habits/constants.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:expandable/expandable.dart';
import 'package:circular_check_box/circular_check_box.dart';

class HabitCard extends StatefulWidget {
  final String name;
  final Key uniqueKey;
  final int dailyCount;

  const HabitCard(this.name, this.uniqueKey, this.dailyCount);

  @override
  _HabitCardState createState() => _HabitCardState();
}

class _HabitCardState extends State<HabitCard> {
  bool isSelected = false;
  double progress = 0;
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(14.0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 65.0,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  blurRadius: 1,
                  offset: Offset(0, 0), // changes position of shadow
                ),
              ],
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.15,
                  child: Icon(
                    Icons.edit,
                    color: Colors.black45,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 35.0, bottom: 35.0),
                  child: Container(
                    width: 1.0,
                    height: 1.0,
                    color: Colors.black45,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.15,
                  child: Icon(
                    Icons.delete,
                    color: Colors.black45,
                  ),
                ),
              ],
            ),
          ),
        ),
        Slidable(
          key: UniqueKey(),
          actionPane: const SlidableDrawerActionPane(),
          actionExtentRatio: 0.15,
          secondaryActions: <Widget>[
            SlideAction(
              color: Colors.transparent,
              onTap: () {
                print("edit");
              },
              child: const SizedBox(
                height: 0,
              ),
            ),
            SlideAction(
              color: Colors.transparent,
              onTap: () {
                print("delete");
              },
              child: const SizedBox(
                height: 0,
              ),
            ),
          ],
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    blurRadius: 1, // changes position of shadow
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: ExpandablePanel(
                header: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 8.0, left: 10, bottom: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: kYellow,
                                child: Icon(
                                  Icons.healing,
                                  color: Colors.black54,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      widget.name,
                                      style: const TextStyle(
                                        fontFamily: 'Montserrat',
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 18.0,
                                      ),
                                    ),
                                    const Text(
                                      'Health',
                                      textAlign: TextAlign.start,
                                      style: kHabitSubtitleTextStyle,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: _buildProgressIndicator(),
                              ),
                              Text(
                                '$count/${widget.dailyCount}',
                                style: kHabitSubtitleTextStyle,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                expanded: Column(
                  children: [
                    getDaysOfWeekRow(getDaysOfWeek()),
                    getWeeklyStatsWidget(getWeeklyStatList()),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildProgressIndicator() {
    return GestureDetector(
      onTap: () {
        setState(
          () {
            if (count == widget.dailyCount) return;
            count++;
            final updated =
                ((progress + 1 / widget.dailyCount).clamp(0.0, 1.0) * 100);
            setState(
              () {
                if (count == widget.dailyCount) {
                  progress = 1.0;
                } else {
                  progress = updated.round() / 100;
                }
              },
            );
          },
        );
      },
      child: CircularPercentIndicator(
        animationDuration: 200,
        animateFromLastPercent: true,
        arcType: ArcType.FULL,
        arcBackgroundColor: Colors.black12,
        backgroundColor: Colors.white,
        progressColor: progress == 1.0 ? Colors.lightGreen[400] : kYellow,
        percent: progress,
        animation: true,
        radius: 30.0,
        circularStrokeCap: CircularStrokeCap.butt,
      ),
    );
  }
}

List<bool> getWeeklyStatList() {
  return [false, true, false, false, true, true, false];
}

List<String> getDaysOfWeek([String locale]) {
  final now = DateTime.now();
  final firstDayOfWeek = now.subtract(Duration(days: now.weekday - 1));
  return List.generate(7, (index) => index)
      .map((value) => DateFormat(DateFormat.ABBR_WEEKDAY, locale)
          .format(firstDayOfWeek.add(Duration(days: value))))
      .toList();
}

Widget getDaysOfWeekRow(List<String> strings) {
  return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: strings
          .map(
            (item) => Text(
              item,
              style: const TextStyle(
                fontSize: 10,
                fontFamily: 'Montserrat',
                color: Colors.black54,
              ),
            ),
          )
          .toList());
}

Widget getWeeklyStatsWidget(List<bool> weeklyStats) {
  return Row(
      children: weeklyStats
          .map(
            (item) => CircularCheckBox(
              checkColor: Colors.white,
              disabledColor: Colors.black45,
              activeColor: Colors.green,
              value: item,
              onChanged: (bool value) {},
            ),
          )
          .toList());
}