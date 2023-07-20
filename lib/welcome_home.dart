import 'package:flutter/material.dart';

class WelcomeHomePage extends StatefulWidget {
  const WelcomeHomePage({super.key});

  @override
  State<WelcomeHomePage> createState() => _WelcomeHomePageState();
}

class _WelcomeHomePageState extends State<WelcomeHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        height: 650,
        width: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Colors.grey.shade100,
        ),
        child: Column(
          children: [
            Container(
              height: 120,
              width: 400,
              color: Colors.white,
              child: Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  const CircleAvatar(
                    radius: 20,
                    //child: Image(image: AssetImage('')),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 30),
                        child: Text(
                          'Immly Freeman',
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            'Online',
                            style: TextStyle(
                                fontSize: 12, color: Colors.grey.shade200),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            '.',
                            style: TextStyle(fontSize: 40, color: Colors.green),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
