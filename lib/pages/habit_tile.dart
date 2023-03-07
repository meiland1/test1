import 'package:flutter/material.dart';

class HabitTile extends StatelessWidget {
  final String child;

  HabitTile({required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        color: Colors.deepPurple[100],
        child: Center(
          child: Text(
            child,
            style: const TextStyle(fontSize: 25),
          ),
        ),
      ),
    );
  }
}