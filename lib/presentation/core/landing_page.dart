import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:habits/presentation/constants.dart';
import 'package:habits/presentation/habits/add_habit_page.dart';
import 'package:habits/presentation/habits/habits_page.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage>
    with TickerProviderStateMixin {
  final List<BottomNavigationBarItem> myTabs = [
    const BottomNavigationBarItem(
        title: Text(""), icon: Icon(FontAwesomeIcons.calendarAlt)),
    const BottomNavigationBarItem(
        title: Text(""), icon: Icon(FontAwesomeIcons.dumbbell)),
    const BottomNavigationBarItem(
        title: Text(""), icon: Icon(FontAwesomeIcons.user)),
  ];

  int _tabIndex = 1;

  void _handleTabSelection(int value) {
    setState(() {
      _tabIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> _tabs = [
      Container(),
      HabitsPage(),
      Container(),
    ];

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: kBackground,
      ),
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: kBackground,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          backgroundColor: kYellow,
          elevation: 4.5,
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
          child: const Icon(Icons.add),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: kBackground,
          elevation: 0.0,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          currentIndex: _tabIndex,
          items: myTabs,
          onTap: (value) {
            _handleTabSelection(value);
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
