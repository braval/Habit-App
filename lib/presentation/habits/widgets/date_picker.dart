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
    return Container(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 360.0),
      child: DatePicker(
        DateTime.now().add(const Duration(days: -6)),
        controller: _controller,
        initialSelectedDate: DateTime.now(),
        daysCount: 7,
        selectionColor: kYellow,
        onDateChange: widget.onChanged,
      ),
    );
  }
}
