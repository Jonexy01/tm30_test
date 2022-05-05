import 'package:flutter/material.dart';
import 'package:tm30_test/pages/dashboard.dart';
import 'package:tm30_test/pages/home.dart';
import 'package:tm30_test/pages/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'tm30_test',
      theme: ThemeData(
        //primarySwatch: Colors.white,
      ),
      routes: {
        '/': (context) => MyHomePage(),
        '/login': (context) => LoginPage(),
        '/dashboard': (context) => DashBoard(),
      },
      //home: const MyHomePage(),
    );
  }
}