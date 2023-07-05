import 'package:flutter/material.dart';
import 'package:smart_change/utilis/app_colors.dart';
import 'package:smart_change/widgets/password_form.dart';

import '../../widgets/input_field.dart';
import '../../widgets/login_footer.dart';

// ignore: must_be_immutable
class SignUp extends StatefulWidget {
  SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController passwordController = TextEditingController();

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
    return Container(
      child: Column(
        children: <Widget>[
          const InputField(
            text: 'User Name',
            textSize: 15,
            icon: Icons.person_2_outlined,
            Iconcolor: AppColors.IconColor,
          ),
          const SizedBox(
            height: 10,
          ),
          const InputField(
            text: 'Email address',
            textSize: 15,
            icon: Icons.mail,
            Iconcolor: AppColors.IconColor,
          ),
          const SizedBox(
            height: 10,
          ),
          const InputField(
              text: 'Phone | +234',
              textSize: 15,
              icon: Icons.call,
              Iconcolor: AppColors.IconColor),
          const SizedBox(
            height: 10,
          ),
          PasswordTextField(
            controller: passwordController,
            text: 'Password',
          ),
          const SizedBox(
            height: 10,
          ),
          PasswordTextField(
            controller: passwordController,
            text: 'Confirm Password',
          ),
          const SizedBox(
            height: 18,
          ),
          const LoginFooter()
        ],
      ),
    );
  }
}
