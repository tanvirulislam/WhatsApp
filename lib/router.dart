import 'package:chitchat/common/widget/error.dart';
import 'package:chitchat/features/auth/screens/login_screen.dart';
import 'package:chitchat/features/auth/screens/otp_screen.dart';

import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case LoginScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => LoginScreen(),
      );
    case OtpScreen.routeName:
      final varificationId = settings.name as String;
      return MaterialPageRoute(
        builder: (context) => OtpScreen(varificationId: varificationId),
      );

    default:
      return MaterialPageRoute(
        builder: (context) => Scaffold(
          body: errorText(title: 'This page dosen\'t exit'),
        ),
      );
  }
}
