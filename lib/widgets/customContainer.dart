// ignore_for_file: file_names, unused_import, camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class customContainer extends StatelessWidget {
  const customContainer(
      {super.key, required this.text, required this.prefixIcon});

  final String text;
  final IconData prefixIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 120,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey)),
      child: Row(
        children: [
          Spacer(),
          Icon(prefixIcon,color: Colors.blue,),
          Spacer(),
          Text(
            text,
            style: TextStyle(color: Colors.grey, fontSize: 10),
          ),
          Spacer()
        ],
      ),
    );
  }
}
