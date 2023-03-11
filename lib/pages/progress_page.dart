import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class CalendarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        centerTitle: true,
        title: const Text(
          'Progress Page',
          style: TextStyle(color: Colors.amber, fontSize: 25),
        ),
      ),
      body: Container(
        child: SfCalendar(
          view: CalendarView.month,
          backgroundColor: Colors.grey[200],
        ),
      ),
    );
  }
}
