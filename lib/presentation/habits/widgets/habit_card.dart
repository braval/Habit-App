import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:habits/application/habits/habit_actor/habit_actor_bloc.dart';
import 'package:habits/domain/habits/habit.dart';
import 'package:habits/presentation/constants.dart';
import 'package:habits/presentation/habits/constants.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:expandable/expandable.dart';

class HabitCard extends StatefulWidget {
  final HabitItem habit;
  final DateTime dateTime;

  const HabitCard({@required this.habit, @required this.dateTime});

  @override
  _HabitCardState createState() => _HabitCardState();
}

class HabitInfo {
  final IconData icon;
  final Color color;

  const HabitInfo(this.icon, this.color);
}

class _HabitCardState extends State<HabitCard> {
  final Map<String, HabitInfo> _info = {
    "Sport": const HabitInfo(FontAwesomeIcons.footballBall, Colors.tealAccent),
    "Health": const HabitInfo(FontAwesomeIcons.heartbeat, Colors.orangeAccent),
    "Social":
        const HabitInfo(FontAwesomeIcons.userFriends, Colors.yellowAccent),
    "Fitness": const HabitInfo(FontAwesomeIcons.running, Colors.greenAccent),
    "Mindfulness": HabitInfo(FontAwesomeIcons.brain, Colors.pink[100]),
    "Night Time Routine":
        const HabitInfo(FontAwesomeIcons.moon, Colors.redAccent),
    "Chores":
        const HabitInfo(FontAwesomeIcons.utensilSpoon, Colors.lightBlueAccent),
    "Other": const HabitInfo(FontAwesomeIcons.surprise, Colors.cyanAccent),
    "Reading":
        const HabitInfo(FontAwesomeIcons.bookReader, Colors.indigoAccent),
  };

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HabitActorBloc, HabitActorState>(
      builder: (context, state) {
        return Row(
          children: [
            Stack(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width - 100,
                    height: kHabitCardHeight,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.4),
                          blurRadius: 1,
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
                          child: const Icon(
                            Icons.edit,
                            color: Colors.black45,
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 35.0, bottom: 35.0),
                          child: Container(
                            width: 1.0,
                            height: 1.0,
                            color: Colors.black45,
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.15,
                          child: const Icon(
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
                        context
                            .bloc<HabitActorBloc>()
                            .add(HabitActorEvent.deleted(widget.habit));
                      },
                      child: const SizedBox(
                        height: 0,
                      ),
                    ),
                  ],
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 10.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width - 100,
                      // width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            blurRadius: 1,
                          ),
                        ],
                        color: widget.habit.done
                            ? _info[widget.habit.category.getOrCrash()].color
                            : kHabitCardColor,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: ExpandablePanel(
                        header: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 8.0, left: 10, bottom: 8),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 30.0,
                                        backgroundColor: Colors.transparent,
                                        child: Icon(
                                          _info[widget.habit.category
                                                  .getOrCrash()]
                                              .icon,
                                          color: widget.habit.done
                                              ? Colors.white
                                              : _info[widget.habit.category
                                                      .getOrCrash()]
                                                  .color,
                                          size: 40.0,
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 8.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              widget.habit.name.getOrCrash(),
                                              style: widget.habit.done
                                                  ? kDoneHabitNameTextStyle
                                                  : kIncompleteHabitNameTextStyle,
                                            ),
                                            Text(
                                              widget.habit.category
                                                  .getOrCrash(),
                                              textAlign: TextAlign.start,
                                              style: widget.habit.done
                                                  ? kDoneHabitSubtitleTextStyle
                                                  : kIcompleteHabitSubtitleTextStyle,
                                            ),
                                          ],
                                        ),
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
                            Text(
                              "Current Streak : ${widget.habit.currentStreak}",
                              style: widget.habit.done
                                  ? kDoneHabitSubtitleTextStyle
                                  : kIcompleteHabitSubtitleTextStyle,
                            ),
                            Text(
                              "Longest Streak : ${widget.habit.longestStreak}",
                              style: widget.habit.done
                                  ? kDoneHabitSubtitleTextStyle
                                  : kIcompleteHabitSubtitleTextStyle,
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            getDaysOfWeekRow(getDaysOfWeek(),
                                widget.habit.weeklyStats, widget.habit.done),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15.0, top: 25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildProgressIndicator(widget.habit),
                  Text(
                    '${widget.habit.currentCount}/${widget.habit.totalCount}',
                    style: kIcompleteHabitSubtitleTextStyle,
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildProgressIndicator(HabitItem habit) {
    double progress = 0;
    if (habit.currentCount == habit.totalCount) {
      progress = 1.0;
    } else {
      progress = habit.currentCount / habit.totalCount;
    }

    return GestureDetector(
      onTap: () => context
          .bloc<HabitActorBloc>()
          .add(HabitActorEvent.countUpdated(habit)),
      child: CircularPercentIndicator(
        animationDuration: 0,
        animateFromLastPercent: true,
        arcType: ArcType.FULL,
        arcBackgroundColor: Colors.grey,
        backgroundColor: Colors.transparent,
        progressColor: _info[widget.habit.category.getOrCrash()].color,
        percent: progress,
        animation: true,
        radius: 40.0,
        lineWidth: 7.0,
        circularStrokeCap: CircularStrokeCap.round,
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

Widget getDaysOfWeekRow(
    List<String> strings, Map<int, bool> weeklyStats, bool done) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: strings.asMap().entries.map((item) {
      return Column(
        children: [
          Text(
            item.value,
            style: done
                ? kDoneHabitSubtitleTextStyle
                : kIcompleteHabitSubtitleTextStyle,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              weeklyStats[item.key + 1] ? Icons.check : FontAwesomeIcons.circle,
              size: 15.0,
            ),
          ),
        ],
      );
    }).toList(),
  );
}
