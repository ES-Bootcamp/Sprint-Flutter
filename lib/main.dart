import 'package:flutter/material.dart';

import 'session_01/login_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login ui',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginUI(),
      debugShowCheckedModeBanner: false,
    );
  }
}

