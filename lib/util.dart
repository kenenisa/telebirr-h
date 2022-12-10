import 'package:flutter/material.dart';
import 'package:telebirr/screens/explore.dart';
import 'package:telebirr/screens/home.dart';
import 'package:telebirr/screens/myaccount.dart';

void onItemTapped(int index, BuildContext context) {
  if (index == 2) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const Explore()));
  } else if (index == 3) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const Myaccount()));
  }
}
