import 'package:flutter/material.dart';
import 'package:telebirr/screens/components/explore_box.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ExploreBox(
              title: 'All about Telebirr',
              subtitle: 'Every guide you are looking for')
        ],
      ),
    );
  }
}
