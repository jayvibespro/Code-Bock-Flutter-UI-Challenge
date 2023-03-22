import 'package:flutter/material.dart';

class CalenderPage extends StatelessWidget {
  const CalenderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Calender Page",
        style: TextStyle(
          fontSize: 45,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
