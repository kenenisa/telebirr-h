import 'package:flutter/material.dart';

class RewardList extends StatelessWidget {
  const RewardList({super.key, this.title, this.money});
  final title;
  final money;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            Row(children: [
              Column(
                children: [
                  Row(
                    children: [
                      Text(title),
                      Container(
                          margin: EdgeInsets.only(left: 50),
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          child: Text(
                            'package',
                            style: TextStyle(color: Colors.white),
                          ))
                    ],
                  ),
                  Text(
                    'On 11/1/2022, 05 days ago',
                    style: TextStyle(fontSize: 16.0, color: Colors.black54),
                  )
                ],
              ),
              Spacer(),
              Text(money),
              Icon(Icons.arrow_forward_ios)
            ]),
            Divider()
          ],
        ));
  }
}
