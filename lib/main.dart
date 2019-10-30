import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './pages/rosterpage.dart';
import './pages/standingpage.dart';
import './pages/homepage.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Color(0xFF203731)));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Team Mobile App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/roster': (context) => TeamPage(),
        '/standing': (context) => StandingPage(),
      },
    );
  }
}
