import 'package:flutter/material.dart';

class ExploreBox extends StatelessWidget {
  const ExploreBox({super.key, this.title, this.subtitle, this.image});
  final title;
  final subtitle;
  final image;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      width: 400.0,
      // height: 300.0,
      margin: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(5)),
      ),
      child: Stack(children: [
        Image.asset(
          image,
          scale: 0.3,
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Text(title, style: Theme.of(context).textTheme.headline2),
            Text(subtitle, style: Theme.of(context).textTheme.subtitle1)
          ]),
        )
      ]),
    ));
  }
}
