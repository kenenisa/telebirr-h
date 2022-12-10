import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:telebirr/screens/components/account_list.dart';
import 'package:telebirr/util.dart';

class Myaccount extends StatefulWidget {
  const Myaccount({super.key});

  @override
  State<Myaccount> createState() => _MyaccountState();
}

class _MyaccountState extends State<Myaccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Myaccount')),
      body: Container(
        child: SingleChildScrollView(
            child: Container(
                child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(30),
              child: Row(children: [
                Container(child: Image.asset('assets/account1.png')),
                Column(
                  children: [
                    Text('Hiwot Bogale'),
                    Text('+251964*****4'),
                  ],
                ),
                //background: rgba(254, 197, 14, 1);
                Spacer(),

                ElevatedButton(
                  onPressed: () => {},
                  child: Text('Customer Level 3'),
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                )
              ]),
            ),
            AccountList(title: 'Change Profile'),
            AccountList(title: 'Transfer to Bank'),
            AccountList(title: 'Change PIN'),
            AccountList(title: 'Nearby'),
            AccountList(title: 'Change Language'),
            AccountList(title: 'Security Questions'),
            AccountList(title: 'Invite Friends'),
            AccountList(title: 'Feedback'),
            AccountList(title: 'Contact Us'),
            AccountList(title: 'About'),
            AccountList(title: 'Version Update'),
            AccountList(title: 'FAQ')
          ],
        ))),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 15,
        // currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        showSelectedLabels: true,
        onTap: (i) => onItemTapped(i, context),
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/Home.svg'), label: ''),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/GIft.svg'), label: ''),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/Compass.svg'), label: ''),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/User_alt.svg'), label: ''),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/Menu.svg'), label: ''),
        ],
      ),
    );
  }
}
