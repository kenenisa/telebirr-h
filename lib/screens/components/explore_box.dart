import 'package:flutter/material.dart';

class ExploreBox extends StatelessWidget {
  const ExploreBox({super.key, this.title, this.subtitle});
  final title;
  final subtitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(children: [Image.asset('assets/explore1.png')]),
    );
  }
}
