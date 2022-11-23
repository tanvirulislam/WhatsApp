import 'package:chitchat/colors.dart';
import 'package:flutter/material.dart';

class CustomeButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  const CustomeButton({Key? key, required this.title, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        title,
        style: TextStyle(color: Colors.black),
      ),
      style: ElevatedButton.styleFrom(
          primary: tabColor,
          minimumSize: Size(MediaQuery.of(context).size.width, 50)),
    );
  }
}
