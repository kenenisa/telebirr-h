import 'package:flutter/material.dart';
import 'package:telebirr/screens/components/explore_box.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:telebirr/util.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Explore')),
      body: Container(
        child: SingleChildScrollView(
          child: Container(
            height: 1000,
            child: Column(
              children: [
                ExploreBox(
                    title: 'All about Telebirr',
                    subtitle: 'Every guide you are looking for',
                    image: 'assets/explore1.png'),
                ExploreBox(
                    title: 'All about Telebirr',
                    subtitle: 'Every guide you are looking for',
                    image: 'assets/explore2.png'),
                ExploreBox(
                    title: 'All about Telebirr',
                    subtitle: 'Every guide you are looking for',
                    image: 'assets/explore3.png'),
                ExploreBox(
                    title: 'All about Telebirr',
                    subtitle: 'Every guide you are looking for',
                    image: 'assets/explore4.png'),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 15,
        currentIndex: 2,
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
