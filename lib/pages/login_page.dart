import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:test1/database_helper.dart';
import 'package:test1/main.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  //final dbHelper = DatabaseHelper();

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _userNameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(10, 50, 10, 10),
          child: TextField(
            controller: _userNameController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Username',
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: TextField(
            controller: _passwordController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Password',
            ),
          ),
        ),
        Container(
          child: ElevatedButton(
            onPressed: _insert,
            child: const Text('Sign In'),
          ),
        )
      ],
    );
  }

  void _insert() async {
    Map<String, dynamic> row = {
      DatabaseHelper.columnName: _userNameController.text,
      DatabaseHelper.columnPwd: _passwordController.text,
    };
    final id = await dbHelper.insert(row);
    debugPrint('inserted row id: $id');
  }
}
