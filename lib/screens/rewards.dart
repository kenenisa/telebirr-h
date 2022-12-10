import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:telebirr/screens/components/account_list.dart';
import 'package:telebirr/screens/components/reward_list.dart';
import 'package:telebirr/util.dart';

class Rewards extends StatefulWidget {
  const Rewards({super.key});

  @override
  State<Rewards> createState() => _RewardsState();
}

class _RewardsState extends State<Rewards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Rewards')),
      body: Container(
        child: SingleChildScrollView(
            child: Container(
                child: Column(
          children: [
            Center(
              child: Image.asset(
                'assets/reward.png',
                scale: 0.8,
              ),
            ),
            RewardList(title: '48min', money: '50 br.'),
            RewardList(title: '48min', money: '50 br.'),
            RewardList(title: '48min', money: '50 br.'),
            RewardList(title: '48min', money: '50 br.'),
            RewardList(title: '48min', money: '50 br.'),
            RewardList(title: '48min', money: '50 br.'),
            RewardList(title: '48min', money: '50 br.'),
          ],
        ))),
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
              icon: SvgPicture.asset('assets/Home.svg'), label: ''),
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
