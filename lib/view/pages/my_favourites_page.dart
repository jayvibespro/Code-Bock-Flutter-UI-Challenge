import 'package:flutter/material.dart';

class MyFavouritesPage extends StatelessWidget {
  const MyFavouritesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "My Favourite",
        style: TextStyle(
          fontSize: 45,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
