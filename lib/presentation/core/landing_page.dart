import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:habits/presentation/constants.dart';
import 'package:habits/presentation/habits/add_habit_page.dart';
import 'package:habits/presentation/habits/habits_page.dart';
import 'package:unicorndial/unicorndial.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage>
    with TickerProviderStateMixin {
  final List<Widget> myTabs = [
    const Icon(FontAwesomeIcons.calendarAlt, size: 25),
    const Icon(FontAwesomeIcons.listAlt, size: 25),
    const Icon(FontAwesomeIcons.user, size: 25),
  ];

  final List<Widget> _tabs = [
    Container(),
    HabitsPage(),
    Container(),
  ];

  int _tabIndex = 1;

  @override
  Widget build(BuildContext context) {
    var childButtons = <UnicornButton>[];

    childButtons.add(
      UnicornButton(
        hasLabel: true,
        labelText: "Task",
        currentButton: FloatingActionButton(
          heroTag: "Task",
          backgroundColor: Colors.orangeAccent,
          mini: true,
          onPressed: () {},
          child: const Icon(FontAwesomeIcons.tasks),
        ),
      ),
    );
    childButtons.add(
      UnicornButton(
        hasLabel: true,
        labelText: "Daily Routine",
        currentButton: FloatingActionButton(
          heroTag: "Daily Routine",
          backgroundColor: Colors.redAccent,
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
                  child: AddTaskScreen(),
                ),
              ),
              backgroundColor: Colors.white,
            );
          },
          child: const Icon(FontAwesomeIcons.sun),
        ),
      ),
    );

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: kBackground,
      ),
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: kBackground,
        floatingActionButton: UnicornDialer(
            backgroundColor: const Color.fromRGBO(255, 255, 255, 0.6),
            parentButtonBackground: Colors.blueAccent[100],
            parentButton: const Icon(FontAwesomeIcons.plus, size: 20.0),
            childButtons: childButtons),
        bottomNavigationBar: CurvedNavigationBar(
          height: 65.0,
          backgroundColor: Colors.transparent,
          color: Colors.blueAccent[100],
          buttonBackgroundColor: Colors.transparent,
          items: myTabs,
          index: _tabIndex,
          onTap: (index) {
            setState(
              () {
                _tabIndex = index;
              },
            );
          },
        ),
        body: IndexedStack(
          index: _tabIndex,
          children: _tabs,
        ),
      ),
    );
  }
}
