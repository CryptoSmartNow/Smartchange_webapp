// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:smart_change/utilis/app_colors.dart';
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
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Column(
        children: <Widget>[
          InputField(
            text: 'Email address',
            textSize: 15,
            icon: Icons.mail,
            Iconcolor: AppColors.IconColor,
          ),
          SizedBox(
            height: 15,
          ),
          InputField(
              text: 'Password',
              textSize: 15,
              icon: Icons.mail_lock_outlined,
              Iconcolor:AppColors.IconColor),
          SizedBox(
            height: 10,
          ),
          Text(
            'Forget Password?',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 20,
          ),
          LoginFooter()
        ],
      ),
    );
  }
}
