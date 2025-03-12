import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttontext;
  final String pathText;
  const CustomButton(
      {super.key, required this.buttontext, required this.pathText});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/$pathText');
        },
        child: Text(buttontext));
  }
}
