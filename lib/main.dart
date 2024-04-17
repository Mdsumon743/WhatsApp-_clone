import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screen_view/spalash.dart';
void main (){
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      title: 'WhatsApp-Clone',
      debugShowCheckedModeBanner: false,
      home: Spalash(),

    );
  }
}
