import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:progress_dialog_null_safe/progress_dialog_null_safe.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class AuthService {
  Future<bool> signinwithGoogle(BuildContext context) async {
    final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication gAuth = await gUser!.authentication;
    final ProgressDialog progressDialog = ProgressDialog(context);
    progressDialog.style(
      message: 'Signing in...',
      progressWidget: CircularProgressIndicator(),
    );
    progressDialog.show();

    try {
      final credential = GoogleAuthProvider.credential(
        accessToken: gAuth.accessToken,
        idToken: gAuth.idToken,
      );

      final userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);

      final userEmail = userCredential.user!.email;

      if (userEmail != dotenv.env['USERADMIN']!) {
        await FirebaseFirestore.instance
            .collection('users')
            .doc(userCredential.user!.uid)
            .set({
          'email': userEmail,
          'locationGeo': GeoPoint(38.72830893136675, -9.153970020770428),
          'locationName': "Lisbon",
          'journals': ["1", "2", "4"],
        });
      }

      progressDialog.hide();
      return true;
    } catch (e) {
      progressDialog.hide();
      // Handle any error that occurred during sign-in
      print('Sign-in with Google failed: $e');
      return false;
    }
  }
}
