import 'package:flutter/material.dart';
import 'package:habits/domain/user/user.dart';
import 'package:habits/presentation/constants.dart';
import 'package:habits/presentation/habits/habits_page.dart';

class LandingPage extends StatefulWidget {
  final User user;

  const LandingPage({@required this.user});

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage>
    with TickerProviderStateMixin {
  final List<BottomNavigationBarItem> myTabs = [
    const BottomNavigationBarItem(
        title: Text(""), icon: Icon(Icons.table_chart)),
    const BottomNavigationBarItem(title: Text(""), icon: Icon(Icons.grid_on)),
    const BottomNavigationBarItem(title: Text(""), icon: Icon(Icons.person)),
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
      HabitsPage(user: widget.user),
      Container(),
    ];

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: kDarkPurple,
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
    );
  }
}
