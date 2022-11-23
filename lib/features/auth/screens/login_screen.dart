import 'package:chitchat/colors.dart';
import 'package:chitchat/common/widget/custome_button.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/login-screen';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final textController = TextEditingController();
  Country? country;
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    textController.dispose();
  }

  void pickCountry() {
    showCountryPicker(
      context: context,
      onSelect: (Country _country) {
        setState(() {
          country = _country;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Enter your phone number'),
          elevation: 0,
          backgroundColor: backgroundColor,
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text('WhatsApp will need to verify your phone number'),
                  SizedBox(height: 10),
                  TextButton(
                    onPressed: pickCountry,
                    child: Text('Pick Country'),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      country == null
                          ? Text('')
                          : Text("+${country!.phoneCode}"),
                      SizedBox(width: 10),
                      SizedBox(
                        width: size.width * .7,
                        child: TextFormField(
                          controller: textController,
                          decoration: InputDecoration(
                              hintText: 'Input your phone number'),
                        ),
                      ),
                    ],
                  ),
                  // SizedBox(
                  //   height: size.height * .6,
                  // ),
                ],
              ),
              SizedBox(
                width: 90,
                child: CustomeButton(
                  title: 'Next',
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
