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
                    children: [
                      Text("Hello"),
                      SizedBox(height: 5),
                      Text("👋"),
                      SizedBox(height: 10),
                      Text(
                          style: const TextStyle(
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
                  children: [
                    Text("Rewards"),
                    Text(
                        style: const TextStyle(
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
                  Container(
                    child: Row(
                      children: [
                        Text("Main Account Transaction"),
                      ],
                    ),
                  )
                ],
              ),
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
