import 'package:flutter/material.dart';
import 'profile_page.dart';
import 'intake_page.dart';
import 'package:test1/services.dart/lists.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final habitsList = Habit.habitList();
  final _habitController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: _buildHeader(),
      drawer: NavDrawer(),
    );
  }

  void _handleHabitChange(Habit habit) {
    setState(() {
      habit.isDone = !habit.isDone;
      if (habit.isDone == true) {
        habit.habitCount++;
        //print('count incremented');
      } else {
        habit.habitCount--;
        //print('count decremented');
      }
    });
  }

  void _deleteHabit(String id) {
    setState(() {
      habitsList.removeWhere((habit) => habit.id == id);
    });
  }

  void _updateHabitList(String habit) {
    setState(() {
      habitsList.add(Habit(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        habitText: habit,
      ));
    });
    _habitController.clear();
  }

  AppBar _buildHeader() {
    return AppBar(
      backgroundColor: Colors.grey[900],
      centerTitle: true,
      title: const Text(
        'Chiro App',
        style: TextStyle(
          color: Colors.greenAccent,
          fontSize: 25,
        ),
      ),
    );
  }
}

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[800],
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.black12,
            ),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1657641898365-48ae7d64e676?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2680&q=80'),
            ),
          ),
          ListTile(
            title: const Text(
              'Welcome',
              style: TextStyle(color: Colors.greenAccent),
            ),
            onTap: () => {},
          ),
          ListTile(
            leading: const Icon(Icons.input),
            title: const Text(
              'Profile',
              style: TextStyle(color: Colors.greenAccent),
            ),
            onTap: () => {
              Navigator.of(context).pop(context),
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ProfilePage())),
            },
          ),
          ListTile(
            leading: const Icon(Icons.input),
            title: const Text(
              'Intake',
              style: TextStyle(color: Colors.greenAccent),
            ),
            onTap: () => {
              Navigator.of(context).pop(context),
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const IntakePage())),
            },
          ),
        ],
      ),
    );
  }
}
