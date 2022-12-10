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
    );
  }
}
