import 'package:flutter/material.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:habits/presentation/constants.dart';

class CustomDatePicker extends StatefulWidget {
  final void Function(DateTime) onChanged;
  const CustomDatePicker(this.onChanged);
  @override
  _CustomDatePickerState createState() => _CustomDatePickerState();
}

class _CustomDatePickerState extends State<CustomDatePicker> {
  final DatePickerController _controller = DatePickerController();

  @override
  Widget build(BuildContext context) {
    return DatePicker(
      DateTime.now().add(const Duration(days: -4)),
      controller: _controller,
      initialSelectedDate: DateTime.now(),
      daysCount: 5,
      selectionColor: kYellow,
      onDateChange: widget.onChanged,
    );
  }
}
