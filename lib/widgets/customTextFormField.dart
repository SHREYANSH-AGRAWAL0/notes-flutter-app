// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class customTextFormField extends StatelessWidget {
  const customTextFormField(
      {super.key,
      required this.hinttext,
      required this.labeltext,
      required this.SuffixIcon});

  final Icon SuffixIcon;
  final String hinttext;
  final String labeltext;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.black,
      decoration: InputDecoration(
          suffixIcon: SuffixIcon,
          hintText: hinttext,
          labelText: labeltext,
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
