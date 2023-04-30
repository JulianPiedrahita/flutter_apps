import 'dart:async';
import 'package:flutter/material.dart';

import 'package:apps/screens/screens.dart';
import 'package:apps/widgets/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'apps',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Login())));
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Background(),
        SafeArea(
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 130),
              child: Logo(),
            ),
          ),
      ],
    );
  }
}
