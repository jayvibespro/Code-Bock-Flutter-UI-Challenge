import 'package:code_block_ui_challenge/view/pages/my_home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UI Challenge',
      theme: ThemeData.dark(),
      home: const MyHome(title: 'UI Challenge'),
    );
  }
}
