import 'package:flutter/material.dart';
import 'package:habits/presentation/constants.dart';
import 'package:habits/presentation/login/widgets/form_widget_helper.dart';

class CategoryList extends StatefulWidget {
  final List<String> categoryList;

  const CategoryList({Key key, this.categoryList}) : super(key: key);
  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  String selectedChoice = "";

  List<Widget> _buildChoiceList() {
    final List<Widget> choices = [];
    widget.categoryList.forEach((item) {
      choices.add(Container(
        padding: const EdgeInsets.all(2.0),
        child: ChoiceChip(
          selectedColor: kYellow,
          label: Text(
            item,
            style: kFormButtonTextStyle,
          ),
          selected: selectedChoice == item,
          onSelected: (selected) {
            setState(() {
              selectedChoice = item;
            });
          },
        ),
      ));
    });
    return choices;
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: _buildChoiceList(),
    );
  }
}
