import 'package:flutter/material.dart';

class LoginFooter extends StatefulWidget {
  const LoginFooter({super.key});

  @override
  State<LoginFooter> createState() => _LoginFooterState();
}

class _LoginFooterState extends State<LoginFooter> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 145,
          height: 45,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(95),
              color: Colors.orangeAccent,
              boxShadow: [
                BoxShadow(
                  color: Colors.orangeAccent.withOpacity(0.2),
                  spreadRadius: 10,
                  blurRadius: 5,
                )
              ]),
          child: const Center(
            child: Text(
              'Continue',
              style: TextStyle(
                fontSize: 15,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const Text(
          'Sign in with',
          style: TextStyle(
            fontSize: 15,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w400,
            color: Colors.orangeAccent,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey.shade400,
                  ),
                  color: Colors.grey.shade300,
                  shape: BoxShape.circle,
                  image: const DecorationImage(
                      image: AssetImage('Images/goog.png'))),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey.shade400,
                  ),
                  color: Colors.grey.shade300,
                  shape: BoxShape.circle,
                  image: const DecorationImage(
                      image: AssetImage('Images/twit.png'))),
            ),
          ],
        )
      ],
    );
  }
}
