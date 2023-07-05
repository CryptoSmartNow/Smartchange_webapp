// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:smart_change/utilis/app_colors.dart';

class PasswordTextField extends StatefulWidget {
  final String text;
  const PasswordTextField({super.key, required this.controller, required this.text});
  final TextEditingController controller;

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  @override
  Widget build(BuildContext context) {
    var obscureText = true;
    return Container(
      height: 45,
      width: 280,
      child: TextField(
        controller: widget.controller,
        obscureText: obscureText,
        decoration: InputDecoration(
            border: InputBorder.none,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: const BorderSide(
                  width: 2,
                  color: AppColors.FooterImageBorderColor,
                )),
            hintText: widget.text,
            filled: true,
            fillColor: AppColors.FooterImageBgColor,
            suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    obscureText = !obscureText;
                  });
                },
                child: obscureText
                    ? const Icon(
                        Icons.visibility_off_outlined,
                        color: AppColors.IconColor,
                      )
                    : const Icon(
                        Icons.visibility_outlined,
                        color: AppColors.IconColor,
                      ))),
      ),
    );
  }
}
