import 'package:contacts/login_Screen.dart';
import 'package:contacts/tabs/calls/history.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:login() ,
    );
  }
}
