import 'dart:async';
import 'package:flutter/material.dart';

import 'package:apps/screens/screens.dart';
import 'package:apps/widgets/widgets.dart';

void main() {
  runApp( const MyApp());
  
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'apps',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
       const Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const Login())));
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Background(),
        SafeArea(
            child: Container(
              width: double.infinity,
              margin:const EdgeInsets.only(top: 130),
            ),
          ),
      ],
    );
  }
}
