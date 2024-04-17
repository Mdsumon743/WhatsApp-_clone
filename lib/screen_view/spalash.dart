import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screen_view/Homepage2.dart';

class Spalash extends StatefulWidget {
  const Spalash({super.key});

  @override
  State<Spalash> createState() => _SpalashState();
}

class _SpalashState extends State<Spalash> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const Homepage2(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
          child: Image.asset(
        'assets/images/what.png',
        width: 100,
        height: 100,
      )),
    );
  }
}
