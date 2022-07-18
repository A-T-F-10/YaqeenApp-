import 'dart:collection';

import 'package:flutter/material.dart';

class CustemButton extends StatelessWidget {
  CustemButton(
      {required this.textButton,
      required this.onPressed,
      required this.colors,
      this.height = 14,
      this.width = 0.6,
      Key? key})
      : super(key: key);
  String textButton;
  Function() onPressed;
  double height;
  double width;
  Color colors;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / height,
      width: MediaQuery.of(context).size.width * width,
      child: ElevatedButton(
          onPressed: onPressed,
          child: Text(textButton),
          style:
              ButtonStyle(backgroundColor: MaterialStateProperty.all(colors))),
    );
  }
}
