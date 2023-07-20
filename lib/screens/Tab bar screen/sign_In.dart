// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:smart_change/screens/Tab%20bar%20screen/forgot_password.dart';
import 'package:smart_change/utilis/app_colors.dart';
import '../../components/input_field.dart';
import '../../components/login_footer.dart';
import '../../components/password_form.dart';



class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
   int counter = 0;

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
    return SizedBox(
      height: 600,
      child: Column(
        children: <Widget>[
          const InputField(
            text: 'Email address',
            textSize: 15,
            Iconcolor: AppColors.IconColor,
            imageUrl: 'assets/images/at.png',
          ),
          const SizedBox(
            height: 15,
          ),
          const PasswordTextField(
            
            text: 'Password',
          ),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const ForgotPassword()));
              setState(() {
       
             
                }                
              );
            },
            child: const Text(
              'Forget Password?',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const LoginFooter()
        ],
      ),
    );
  }


}
