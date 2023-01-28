import 'package:flutter/material.dart';

import 'session_01/login_ui.dart';
import 'session_02/custom_widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Custom widgets',
      home: CustomWidgets(),
      debugShowCheckedModeBanner: false,
    );
  }
}

