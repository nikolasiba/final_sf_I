import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.controller,
      required this.borderColor,
      required this.textColor,
      required this.label});
  final TextEditingController controller;
  final Color borderColor;
  final Color textColor;
  final String label;

  @override
  Widget build(BuildContext context) {
    return TextField(
        style: TextStyle(color: textColor, fontWeight: FontWeight.bold),
        cursorColor: textColor,
        controller: controller,
        decoration: InputDecoration(
          suffixIcon: Icon(Icons.password, color: textColor),
          labelStyle: TextStyle(
              color: textColor, fontWeight: FontWeight.bold, fontSize: 20),
          labelText: label,
          fillColor: textColor,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(
              color: textColor,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(
              color: textColor,
              width: 1.0,
            ),
          ),
        ));
  }
}
