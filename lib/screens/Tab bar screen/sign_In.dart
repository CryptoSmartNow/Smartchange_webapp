// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:smart_change/widgets/header_image.dart';
import 'package:smart_change/widgets/input_field.dart';

import '../../widgets/login_footer.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          InputField(
            text: 'Email address',
            textSize: 15,
            icon: Icons.mail,
            Iconcolor: Colors.grey.shade400,
          ),
          const SizedBox(
            height: 15,
          ),
          InputField(
              text: 'Password',
              textSize: 15,
              icon: Icons.mail_lock_outlined,
              Iconcolor: Colors.grey.shade400),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Forget Password?',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 20,
          ),
          const LoginFooter()
        ],
      ),
    );
  }
}
