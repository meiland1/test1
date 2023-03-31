import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: _buildHeader(),
      body: Container(
        child: const ListTile(
          title: Text(
            'Name:',
            style: TextStyle(color: Colors.greenAccent, fontSize: 20),
          ),
          subtitle: Text(
            'Email:',
            style: TextStyle(color: Colors.greenAccent, fontSize: 20),
          ),
        ),
      ),
    );
  }

  AppBar _buildHeader() {
    return AppBar(
      backgroundColor: Colors.grey[900],
      centerTitle: true,
      title: const Text(
        'Profile Page',
        style: TextStyle(
          color: Colors.greenAccent,
          fontSize: 25,
        ),
      ),
    );
  }
}
