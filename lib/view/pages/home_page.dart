import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/item_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 18.0, right: 35, top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                borderRadius: BorderRadius.circular(12),
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 25,
                    height: 25,
                    child: Image.asset(
                      'assets/images/menu.png',
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  InkWell(
                    borderRadius: BorderRadius.circular(12),
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 30,
                        height: 30,
                        child: Image.asset(
                          'assets/images/bx_shopping-bag.png',
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(15),
                      onTap: () {},
                      child: Container(
                        width: 36,
                        height: 36,
                        decoration: BoxDecoration(
                          color: Colors.amber.shade100,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Center(
                            child: FaIcon(
                              FontAwesomeIcons.person,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 26.0, right: 26, top: 36),
              child: Container(
                padding: const EdgeInsets.only(
                    top: 36, left: 20, bottom: 22, right: 20),
                height: 222,
                decoration: BoxDecoration(
                  color: const Color(0xFFFFFF).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(bottom: 10.0),
                            child: Text(
                              'O F F E R',
                              style: TextStyle(
                                color: Color(0xFFD3A888),
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 10.0),
                            child: Text(
                              '40% Off',
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 14.0),
                            child: Text(
                              "In honor of World Health Day we'd like to give you this offers.",
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                          InkWell(
                            borderRadius: BorderRadius.circular(10),
                            onTap: () {},
                            child: Container(
                              width: 110,
                              height: 34,
                              decoration: BoxDecoration(
                                color: const Color(0xFFEEAC5C),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                child: Text(
                                  'View Offers',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Expanded(child: SizedBox()),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 32,
              right: -16,
              child: SizedBox(
                width: 278,
                height: 239,
                child: Image.asset(
                  'assets/images/mixed.png',
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 29.0, left: 26, right: 29),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Recommended Fruits',
                style: TextStyle(
                  color: Color(0xFFCBCBD4),
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              InkWell(
                onTap: () {},
                child: Row(
                  children: const [
                    Text(
                      'View All',
                      style: TextStyle(
                        color: Color(0xFFD3A888),
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Icon(
                      Icons.chevron_right_rounded,
                      color: Color(0xFFD3A888),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 36.0),
          child: SizedBox(
            height: 270,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Row(
                children: const [
                  ItemCard(
                    name: 'Pineapple',
                    price: '8,000',
                    image: 'assets/images/pineapple-removebg-preview.png',
                    rate: '5.0',
                    unit: 'Kg',
                  ),
                  ItemCard(
                    name: 'Apple',
                    price: '2,500',
                    image: 'assets/images/apple-removebg.png',
                    rate: '4.7',
                    unit: 'Kg',
                  ),
                  ItemCard(
                    name: 'Mixer',
                    price: '15,000',
                    image: 'assets/images/mixed.png',
                    rate: '4.8',
                    unit: 'Kg',
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
