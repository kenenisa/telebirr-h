import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:telebirr/screens/home.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/homebg.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(60.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/homebg.jpeg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: null /* add child content here */,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Image.asset('assets/homebg.jpeg'),
                  Expanded(
                    child: Align(
                      alignment: FractionalOffset.bottomCenter,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                            width: 250,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () => {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Home()))
                              },
                              child: Text('SignUp'),
                            ),
                          ),
                          SizedBox(
                            width: 40,
                            height: 25,
                          ),
                          SizedBox(
                            width: 250,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () => {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Home()))
                              },
                              child: Text('SignIn'),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
