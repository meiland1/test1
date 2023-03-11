import 'package:flutter/material.dart';
//import 'habit_tile.dart';

class HabitsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        centerTitle: true,
        title: const Text(
          'Habit List',
          style: TextStyle(
            color: Colors.amber,
            fontSize: 25,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsetsDirectional.all(8.0),
        children: [
          //HabitTile(),
          // HabitTile(),
          // HabitTile(),
        ],
      ),
    );
  }
}
