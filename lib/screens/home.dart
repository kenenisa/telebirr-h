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
      appBar: AppBar(title: Text('Home')),
      body: Container(
        child: SingleChildScrollView(
          child: Container(child: Text('home page')),
        ),
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
