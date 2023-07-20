import 'package:flutter/material.dart';
import 'package:smart_change/screens/Tab%20bar%20screen/additional_secure.dart';
import 'package:smart_change/utilis/app_colors.dart';
import '../../components/input_field.dart';
import '../../components/normal_button.dart';
import '../../components/orange_button.dart';
import '../../components/password_form.dart';

// ignore: must_be_immutable
class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
    return Material(
      child: SizedBox(
        height: 600,
        child: Column(
          children: <Widget>[
            const InputField(
              text: 'User Name',
              textSize: 15,
              Iconcolor: AppColors.IconColor,
              imageUrl: 'assets/images/user.png',
            ),
            const SizedBox(
              height: 8,
            ),
            const InputField(
              text: 'Email address',
              textSize: 15,
              Iconcolor: AppColors.IconColor,
              imageUrl: 'assets/images/at.png',
            ),
            const SizedBox(
              height: 8,
            ),
            const InputField(
              text: 'Phone | +234',
              textSize: 15,
              Iconcolor: AppColors.IconColor,
              imageUrl: 'assets/images/telephone.png',
            ),
            const SizedBox(
              height: 8,
            ),
            const PasswordTextField(
              text: 'Password',
            ),
            const SizedBox(
              height: 8,
            ),
            const PasswordTextField(
              text: 'Confirm Password',
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: 145,
              height: 45,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(95),
                  color: AppColors.ClickableBottonColor,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.ClickableBottonColor.withOpacity(0.2),
                      spreadRadius: 10,
                      blurRadius: 5,
                    )
                  ]),
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    openDialog();
                  },
                  child: const Text(
                    'Continue',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        fontFamily: 'Roboto'),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 13,
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
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.FooterImageBorderColor,
                      ),
                      color: AppColors.FooterImageBgColor,
                      shape: BoxShape.circle,
                      image: const DecorationImage(
                          image: AssetImage('Images/goog.png'))),
                ),
                const SizedBox(
                  width: 8,
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.FooterImageBorderColor,
                      ),
                      color: AppColors.FooterImageBgColor,
                      shape: BoxShape.circle,
                      image: const DecorationImage(
                          image: AssetImage('Images/twit.png'))),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void openDialog() => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          backgroundColor: Colors.white,
          title: const Center(
            child: Text(
              'Include Additional Security',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Roboto',
                  color: Color.fromARGB(255, 11, 44, 12)),
            ),
          ),
          content: const SizedBox(
            height: 180,
            width: 250,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.security_outlined,
                        size: 60,
                        color: AppColors.ClickableBottonColor,
                      ),
                      SizedBox(height: 30),
                      Center(
                        child: Text(
                          '   Include additional security features\nto protect your account from external\n   threats and unauthorized activities',
                          style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Roboto',
                              color: Color.fromARGB(255, 11, 44, 12)),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 12,
                )
              ],
            ),
          ),
          actions: [
            Row(
              children: [
                GestureDetector(
                    onTap: () {
                      setState(() {});
                    },
                    child: ColourlessButton(
                      text: 'Skip',
                      onPress: () {
                        Navigator.of(context).pop();
                      },
                    )),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                    onTap: () {
                      setState(() {});
                    },
                    child: OrangeButton(
                      text: 'Continue',
                      onPress: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const AdditionalSecure()));
                      },
                    )),
              ],
            )
          ],
        ),
      );
}
