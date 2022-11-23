import 'package:flutter/material.dart';

class OtpScreen extends StatefulWidget {
  static const routeName = '/otp-screen';
  final String varificationId;

  const OtpScreen({Key? key, required this.varificationId}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(),
    );
  }
}
