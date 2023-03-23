import 'package:flutter/material.dart';

class ShopListPage extends StatelessWidget {
  const ShopListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Shop List Page",
        style: TextStyle(
          fontSize: 45,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
