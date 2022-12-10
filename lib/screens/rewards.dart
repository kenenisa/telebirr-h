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
        currentIndex: 1,
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
