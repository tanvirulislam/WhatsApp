import 'package:chitchat/common/widget/custome_button.dart';
import 'package:chitchat/features/auth/screens/login_screen.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 60),
                Text(
                  'Welcome to Whatsapp',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 33,
                  ),
                ),
                SizedBox(height: size.height / 9),
                Image.asset('assets/bg.png', height: 340, width: 340),
                SizedBox(height: size.height / 9),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Read our Privacy Policy, Tap to "Agree and Continue" to accept term and conditions',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  width: size.width * .75,
                  child: CustomeButton(
                    title: 'Agree and Continue',
                    onPressed: () {
                      Navigator.pushNamed(context, LoginScreen.routeName);
                      // Navigator.push(
                      //   context,
                      //   PageTransition(
                      //     child: LoginScreen(),
                      //     type: PageTransitionType.leftToRight,
                      //   ),
                      // );
                    },
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
