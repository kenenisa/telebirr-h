import 'dart:math';

import 'package:flutter/material.dart';
import 'package:telebirr/screens/components/explore_box.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:telebirr/util.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _ExploreState();
}

class _ExploreState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50),
        child: SingleChildScrollView(
          child: Container(
              child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 10, 0),
                    child: Image.asset(
                      'assets/Bell.png',
                      width: 40,
                      height: 40,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 10, 0),
                    child: Image.asset(
                      'assets/Search.png',
                      width: 40,
                      height: 40,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 10, 0),
                    child: Image.asset(
                      'assets/qr.png',
                      width: 40,
                      height: 40,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 10, 0),
                    child: Image.asset(
                      'assets/woman.png',
                      width: 100,
                      height: 150,
                    ),
                  ),
                  Column(
                    children: const [
                      Text("Hello"),
                      SizedBox(height: 5),
                      Text("👋"),
                      SizedBox(height: 10),
                      Text(
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                          'Hiwot Bogale'),
                    ],
                  )
                ],
              ),
              Image.asset(
                'assets/Balance.png',
                width: 400,
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text("Rewards"),
                    Text(
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                        "Balance"),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Scrollbar(
                        thickness: 0,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/sta.png',
                                    width: 100,
                                    height: 100,
                                  ),
                                  Text("Main Account Transactions"),
                                ],
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/sta.png',
                                    width: 100,
                                    height: 100,
                                  ),
                                  Text("Main Account Transactions"),
                                ],
                              ),
                            ],
                          ),
                        )),
                  )
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                            style: TextStyle(
                              fontSize: 17.0,
                              color: Colors.black,
                            ),
                            "Favorite Links"),
                        Text("See all"),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/Menu1.png',
                        width: 100,
                        height: 100,
                      ),
                      Text("Deposit Cash"),
                      SizedBox(width: 138),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/Financial Institution.png',
                        width: 100,
                        height: 100,
                      ),
                      Text("Financial Institutions"),
                      SizedBox(width: 90),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                ],
              )
            ],
          )),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 15,
        currentIndex: 0,
        selectedItemColor: Colors.amber[800],
        showSelectedLabels: true,
        onTap: (i) => onItemTapped(i, context),
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/Home.svg'),
              label: '',
              activeIcon: Container(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/Home.svg', color: Colors.amber),
                  Container(
                    width: 5,
                    height: 5,
                    margin: EdgeInsets.only(top: 5),
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                  )
                ],
              ))),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/GIft.svg'),
              label: '',
              activeIcon: Container(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/GIft.svg', color: Colors.amber),
                  Container(
                    width: 5,
                    height: 5,
                    margin: EdgeInsets.only(top: 5),
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                  )
                ],
              ))),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/Compass.svg'),
              label: '',
              activeIcon: Container(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/Compass.svg', color: Colors.amber),
                  Container(
                    width: 5,
                    height: 5,
                    margin: EdgeInsets.only(top: 5),
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                  )
                ],
              ))),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/User_alt.svg'),
              label: '',
              activeIcon: Container(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/User_alt.svg', color: Colors.amber),
                  Container(
                    width: 5,
                    height: 5,
                    margin: EdgeInsets.only(top: 5),
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                  )
                ],
              ))),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/Menu.svg'),
              label: '',
              activeIcon: Container(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/Menu.svg', color: Colors.amber),
                  Container(
                    width: 5,
                    height: 5,
                    margin: EdgeInsets.only(top: 5),
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                  )
                ],
              ))),
        ],
      ),
    );
  }
}
