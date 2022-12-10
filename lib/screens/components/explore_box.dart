import 'package:flutter/material.dart';

class ExploreBox extends StatelessWidget {
  const ExploreBox({super.key, this.title, this.subtitle});
  final title;
  final subtitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(5))),
      child: Stack(children: [
        Image.asset('assets/explore1.png'),
        Container(
          child: Column(children: [Text(title), Text(subtitle)]),
        )
      ]),
    );
  }
}
