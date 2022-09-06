import 'package:flutter/material.dart';
import 'package:flutter_study_202209/components/date_picker.dart';
import 'package:flutter_study_202209/components/time_picker.dart';

class DateTimePicker extends StatefulWidget {
  const DateTimePicker({Key? key}) : super(key: key);

  @override
  _DateTimePickerState createState() => _DateTimePickerState();
}

class _DateTimePickerState extends State<DateTimePicker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [TimePicker(), DatePicker()],
      ),
    );
  }
}
