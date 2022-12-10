import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:telebirr/screens/components/account_list.dart';
import 'package:telebirr/screens/components/explore_box.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:telebirr/util.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _ExploreState();
}

class _ExploreState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Menu')),
      body: Container(
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 30, top: 20),
              child: Text(
                'All services',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Image.asset(
              'assets/menu.png',
              scale: 0.6,
            ),
            AccountList(title: 'Deposit Cash'),
            AccountList(title: 'Financial Services'),
            AccountList(title: 'Send Money'),
            AccountList(title: 'Buy Airtime/Package'),
            AccountList(title: 'Receive Payment'),
            AccountList(title: 'Pay with telebirr'),
            AccountList(title: 'Fundraising'),
            AccountList(title: 'Withdraw Cash'),
          ],
        )),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 15,
        // currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        showSelectedLabels: true,
        onTap: (i) => onItemTapped(i, context),
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/Menu.svg'), label: ''),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/GIft.svg'), label: ''),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/Compass.svg'), label: ''),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/User_alt.svg'), label: ''),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/Menu.svg'), label: ''),
        ],
      ),
    );
  }
}
