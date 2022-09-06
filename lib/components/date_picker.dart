import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({Key? key}) : super(key: key);
  @override
  _DatePickerState createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  DateTime _date = DateTime.now();
  String _dateToStr = "";

  @override
  void initState() {
    super.initState();
    _date = DateTime.now();
    _dateToStr = DateFormat('yyyy/MM/dd').format(_date);
  }

  Future _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _date,
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(
        const Duration(days: 365),
      ),
    );
    if (picked != null) {
      setState(() => _date = picked);
      _dateToStr = DateFormat('yyyy/MM/dd').format(_date);
    }
  }

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () => _selectDate(context),
        child: Container(
          height: deviceHeight * 0.08,
          width: deviceWidth * 0.5,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              _dateToStr,
              style: TextStyle(fontSize: deviceHeight * 0.04),
            ),
          ),
        ),
      ),
    );
  }
}
