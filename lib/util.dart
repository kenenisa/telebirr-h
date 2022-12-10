import 'package:flutter/material.dart';
import 'package:telebirr/screens/explore.dart';
import 'package:telebirr/screens/home.dart';
void onItemTapped(int index, BuildContext context) {
    if (index == 2) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const Explore()));
    }
}