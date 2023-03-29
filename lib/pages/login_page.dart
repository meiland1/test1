import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:test1/database_helper.dart';
import 'package:test1/main.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _userNameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[200],
      appBar: _buildHeader(),
      body: Container(
        color: Colors.amber[200],
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(10, 50, 10, 10),
              child: TextField(
                controller: _userNameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Username',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: TextField(
                controller: _passwordController,
                decoration: const InputDecoration(
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
            ),
            Container(
              padding: const EdgeInsets.all(15),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    CircleAvatar(
                      radius: 56,
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1657641898365-48ae7d64e676?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2680&q=80'),
                    )
                  ]),
            )
          ],
        ),
      ),
    );
  }

  AppBar _buildHeader() {
    return AppBar(
      backgroundColor: Colors.grey[900],
      centerTitle: true,
      title: const Text(
        'Sign In',
        style: TextStyle(
          color: Colors.amber,
          fontSize: 25,
        ),
      ),
    );
  }

  void _insert() async {
    Map<String, dynamic> row = {
      DatabaseHelper.columnName: _userNameController.text,
      DatabaseHelper.columnPwd: _passwordController.text,
    };
    _userNameController.clear();
    _passwordController.clear();
    final id = await dbHelper.insert(row);
    debugPrint('inserted row id: $id');
  }
}
