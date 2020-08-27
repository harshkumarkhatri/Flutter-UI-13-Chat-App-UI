import 'package:flutter/material.dart';
import 'package:flutter_ui_13_chat_app_ui/screen2.dart';
import 'package:flutter_ui_13_chat_app_ui/screen3.dart';
import 'package:flutter_ui_13_chat_app_ui/screen4.dart';
import 'package:flutter_ui_13_chat_app_ui/screens/screen1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Screen4(),
    );
  }
}

