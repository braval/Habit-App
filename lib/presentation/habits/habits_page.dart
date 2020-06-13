import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habits/application/habits/bloc/habit_list_bloc.dart';
import 'package:habits/domain/database/user.dart';
import 'package:habits/presentation/constants.dart';
import 'package:habits/presentation/core/header_widget.dart';
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

  List<HabitCard> habits = [
    HabitCard('Meditation', UniqueKey(), 3),
    HabitCard('Running', UniqueKey(), 6),
    HabitCard('Gym', UniqueKey(), 1),
  ];

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
                child: Container(
                    //TODO: add sheet
                    ),
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
                      child: BlocConsumer<HabitListBloc, HabitListState>(
                        listener: (context, state) {
                          state.when(
                            initial: () {},
                            fetching: () {},
                            fetched: (User user) {},
                            error: () {
                              FlushbarHelper.createError(
                                message: 'Server error',
                              ).show(context);
                            },
                          );
                        },
                        builder: (context, state) {
                          if (state is Fetched) {
                            return _buildHabits();
                          }
                          return CircularProgressBar();
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
  }

  Widget _buildHabits() {
    return Column(
      children: habits,
    );
  }
}
