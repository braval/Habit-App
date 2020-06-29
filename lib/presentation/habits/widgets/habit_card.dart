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

class _HabitCardState extends State<HabitCard> {
  final Map<String, IconData> _icons = {
    "Sport": FontAwesomeIcons.footballBall,
    "Health": FontAwesomeIcons.heartbeat,
    "Social": FontAwesomeIcons.userFriends,
    "Fitness": FontAwesomeIcons.running,
    "Mindfulness": FontAwesomeIcons.brain,
    "Night Time Routine": FontAwesomeIcons.moon,
    "Chores": FontAwesomeIcons.utensilSpoon,
    "Other": FontAwesomeIcons.surprise,
    "Reading": FontAwesomeIcons.bookReader,
  };

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HabitActorBloc, HabitActorState>(
      builder: (context, state) {
        return Stack(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 65.0,
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
                      padding: const EdgeInsets.only(top: 35.0, bottom: 35.0),
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
              enabled: DateFormat("yyyy-MM-dd").format(widget.dateTime) ==
                  DateFormat("yyyy-MM-dd").format(DateTime.now()),
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
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        blurRadius: 1,
                      ),
                    ],
                    color: widget.habit.done ? Colors.grey[200] : Colors.white,
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: kYellow.withAlpha(5000),
                                    child: Icon(
                                      _icons[
                                          widget.habit.category.getOrCrash()],
                                      color: Colors.white,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          widget.habit.name.getOrCrash(),
                                          style: kHabitNameTextStyle,
                                        ),
                                        Text(
                                          widget.habit.category.getOrCrash(),
                                          textAlign: TextAlign.start,
                                          style: kHabitSubtitleTextStyle,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child:
                                        _buildProgressIndicator(widget.habit),
                                  ),
                                  Text(
                                    '${widget.habit.currentCount}/${widget.habit.totalCount}',
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
                      ],
                    ),
                  ),
                ),
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
        arcBackgroundColor: Colors.black12,
        backgroundColor: Colors.transparent,
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
            (item) => Column(
              children: [
                Text(
                  item,
                  style: kHabitSubtitleTextStyle,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.check,
                    size: 15.0,
                  ),
                ),
              ],
            ),
          )
          .toList());
}
