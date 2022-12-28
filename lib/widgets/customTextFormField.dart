// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class customTextFormField extends StatelessWidget {
  const customTextFormField(
      {super.key,
      required this.suffixIcon,
      required this.hintText,
      required this.labelText});

  final Icon suffixIcon;
  final String hintText;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.black,
      decoration: InputDecoration(
          suffixIcon: suffixIcon,
          hintText: hintText,
          labelText: labelText,
          labelStyle: TextStyle(fontWeight: FontWeight.bold),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(width: 2)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(width: 2))),
    );
  }
}
