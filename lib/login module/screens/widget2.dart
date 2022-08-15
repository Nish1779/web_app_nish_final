import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Widget2 extends StatefulWidget {
  const Widget2({Key? key}) : super(key: key);

  @override
  State<Widget2> createState() => _Widget2State();
}

class _Widget2State extends State<Widget2> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calender'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: TableCalendar(
          firstDay: DateTime.utc(1999,09,01),
          lastDay: DateTime.utc(2080,10,1),
          focusedDay: DateTime.now(),
          headerVisible: true,
          daysOfWeekVisible: true,
          shouldFillViewport: false,
          headerStyle: HeaderStyle(titleTextStyle: TextStyle(fontSize: 25,color: Colors.grey,fontWeight: FontWeight.bold)),
          calendarStyle: CalendarStyle(todayTextStyle: TextStyle(fontSize: 25,color: Colors.red,fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
