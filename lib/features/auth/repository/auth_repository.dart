import 'package:chitchat/common/utils/utils.dart';
import 'package:chitchat/features/auth/screens/otp_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class AuthRepository {
  final FirebaseAuth auth;
  final FirebaseFirestore firestore;

  AuthRepository({
    required this.auth,
    required this.firestore,
  });

  void signInWithPhone(BuildContext context, String phoneNumber) async {
    try {
      await auth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        verificationCompleted: (PhoneAuthCredential credential) async {
          await auth.signInWithCredential(credential);
        },
        verificationFailed: (error) {
          throw Exception(error.message);
        },
        codeSent: ((verificationId, forceResendingToken) {
          Navigator.pushNamed(context, OtpScreen.routeName,
              arguments: verificationId);
        }),
        codeAutoRetrievalTimeout: (verificationId) {},
      );
    } on FirebaseAuthException catch (e) {
      showSnackbar(
        context: context,
        content: e.message!,
      );
    }
  }
}
