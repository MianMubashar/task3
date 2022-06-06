import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:task3/screens/sign_in.dart';

class AuthProvider extends ChangeNotifier{

  FirebaseAuth firebaseAuth=FirebaseAuth.instance;
  User? user;


  Future<User?> signInWithGoogle() async {
    // Trigger the authentication flow

    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    final UserCredential userCredential=await FirebaseAuth.instance.signInWithCredential(credential);
    user=userCredential.user;

    // Once signed in, return the UserCredential
    return user;
  }

  Future<void> signOut({required BuildContext context}) async {
    final GoogleSignIn googleSignIn = GoogleSignIn();

    try {

      await FirebaseAuth.instance.signOut();
      await googleSignIn.signOut().then((value) {
        Navigator.of(context).pushAndRemoveUntil( MaterialPageRoute(builder: (context)=>SignIn()), (route) => false);
      });
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('There is error in signing out, Please try again'),),
      );
    }
  }




}
