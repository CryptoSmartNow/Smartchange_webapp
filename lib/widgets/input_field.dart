import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  final String text;
  final double textSize;
  final IconData icon;
  final double iconSize;
  final Color Iconcolor;
  const InputField(
      {
        
        required this.text,
      required this.textSize,
      required this.icon,
      this.iconSize = 18,
      required this.Iconcolor,
      super.key, });

      

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 280,
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(
                width: 2,
                color: Colors.grey.shade400,
              )),
          filled: true,
          fillColor: Colors.grey[300],
          hintText: widget.text,
          hintStyle: TextStyle(
            fontSize: widget.textSize,
          ),
          suffixIcon: Icon(
            widget.icon,
            size: widget.iconSize,
            color: widget.Iconcolor,
          ),
        ),
      ),
    );
  }
}
