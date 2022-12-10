import 'package:flutter/material.dart';
import 'package:telebirr/screens/explore.dart';
import 'package:telebirr/screens/home.dart';
import 'package:telebirr/screens/menu.dart';
import 'package:telebirr/screens/myaccount.dart';
import 'package:telebirr/screens/rewards.dart';

void onItemTapped(int index, BuildContext context) {
  if (index == 2) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const Explore()));
  } else if (index == 3) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const Myaccount()));
  } else if (index == 1) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const Rewards()));
  } else if (index == 4) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const Menu()));
  } else if (index == 0) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const Home()));
  }
}
