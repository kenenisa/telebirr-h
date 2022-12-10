import 'package:flutter/material.dart';

class AccountList extends StatelessWidget {
  const AccountList({super.key, this.title});
  final title;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Row(
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 20.0),
              ),
              Spacer(),
              Icon(Icons.arrow_forward_ios)
            ],
          )),
      Divider()
    ]);
  }
}
