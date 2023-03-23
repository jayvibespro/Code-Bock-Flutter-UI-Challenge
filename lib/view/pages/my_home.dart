import 'package:code_block_ui_challenge/view/pages/home_page.dart';
import 'package:code_block_ui_challenge/view/pages/my_favourites_page.dart';
import 'package:code_block_ui_challenge/view/pages/search_page.dart';
import 'package:code_block_ui_challenge/view/pages/shop_list_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key, required this.title});

  final String title;

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int pageIndex = 0;

  final pages = [
    const HomePage(),
    const SearchPage(),
    const MyFavouritesPage(),
    const ShopListPage(),
  ];

  Widget bottomNav() {
    return Container(
      height: 60,
      decoration: const BoxDecoration(
        color: Color(0xFF2C2C2C),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Container(
                  height: 3,
                  width: MediaQuery.of(context).size.width * 0.18,
                  decoration: BoxDecoration(
                    color: pageIndex == 0
                        ? const Color(0xFFEEAC5C)
                        : const Color(0xFF2C2C2C),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 0;
                  });
                },
                icon: pageIndex == 0
                    ? const Icon(
                        Icons.home_filled,
                        color: Color(0xFFEEAC5C),
                        size: 35,
                      )
                    : const Icon(
                        Icons.home_filled,
                        color: Color(0xFFA6A6AA),
                        size: 35,
                      ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  height: 3,
                  width: MediaQuery.of(context).size.width * 0.18,
                  decoration: BoxDecoration(
                    color: pageIndex == 1
                        ? const Color(0xFFEEAC5C)
                        : const Color(0xFF2C2C2C),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 1;
                  });
                },
                icon: pageIndex == 1
                    ? const Icon(
                        Icons.search_outlined,
                        color: Color(0xFFEEAC5C),
                        size: 35,
                      )
                    : const Icon(
                        Icons.search_outlined,
                        color: Color(0xFFA6A6AA),
                        size: 35,
                      ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  height: 3,
                  width: MediaQuery.of(context).size.width * 0.18,
                  decoration: BoxDecoration(
                    color: pageIndex == 2
                        ? const Color(0xFFEEAC5C)
                        : const Color(0xFF2C2C2C),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 2;
                  });
                },
                icon: pageIndex == 2
                    ? const Icon(
                        Icons.favorite,
                        color: Color(0xFFEEAC5C),
                        size: 35,
                      )
                    : const Icon(
                        Icons.favorite,
                        color: Color(0xFFA6A6AA),
                        size: 35,
                      ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Container(
                  height: 3,
                  width: MediaQuery.of(context).size.width * 0.18,
                  decoration: BoxDecoration(
                    color: pageIndex == 3
                        ? const Color(0xFFEEAC5C)
                        : const Color(0xFF2C2C2C),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 3;
                  });
                },
                icon: pageIndex == 3
                    ? const FaIcon(
                        FontAwesomeIcons.clipboardList,
                        color: Color(0xFFEEAC5C),
                        size: 30,
                      )
                    : const Icon(
                        FontAwesomeIcons.clipboardList,
                        color: Color(0xFFA6A6AA),
                        size: 30,
                      ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF1E1E1E),
        body: pages[pageIndex],
        bottomNavigationBar: bottomNav(),
      ),
    );
  }
}
