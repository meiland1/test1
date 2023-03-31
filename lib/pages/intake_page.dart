import 'package:flutter/material.dart';

class IntakePage extends StatelessWidget {
  const IntakePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        centerTitle: true,
        title: const Text(
          'Intake',
          style: TextStyle(
            color: Colors.greenAccent,
            fontSize: 25,
          ),
        ),
      ),
      body: DropdownButton(
        items: const [
          DropdownMenuItem(
            child: Text('Male'),
            value: 'Male',
          ),
          DropdownMenuItem(
            child: Text('Female'),
            value: 'Female',
          ),
          DropdownMenuItem(
            child: Text('Other'),
            value: 'Other',
          ),
        ],
        onChanged: (String? value) {},
        isExpanded: true,
      ),
    );
  }
}
