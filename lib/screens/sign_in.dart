import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task3/components/constants.dart';
import 'package:task3/provider/auth_provider.dart';
import 'package:task3/screens/sign_out.dart';
import 'package:task3/screens/sign_up.dart';

import '../components/reuseable_widgets/auth_button.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size= MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.only(left: 15,right: 15),
          height: size.height,
          width: size.width,
          color: kWhiteColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [

              Column(
                children: [
                  Image.asset('assets/images/car.png',height: size.height * 0.3),
                  largerText('SAMAN',color: kBlackColor,),

                  Align(alignment: Alignment.centerLeft,child: smallText('Select any sign in option...',color: kBlackColor,)),
                  SizedBox(height:size.height * 0.02 ,),
                  AuthButton(size: size,imagePath: 'assets/icons/phones.png',text: 'Continue With Phone Number',bgColor: Colors.green,onPress: (){}),
                  AuthButton(size: size,imagePath: 'assets/icons/facebook.png',text: 'Continue With Facebook Number',bgColor: Colors.blue,onPress: (){}),
                  AuthButton(size: size,imagePath: 'assets/icons/google.png',text: 'Continue With Google Number',bgColor: Colors.red,isGoogle: true,onPress: () async{
                    await Provider.of<AuthProvider>(context,listen: false).signInWithGoogle().then((value) {

                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SignOut()));
                    }).catchError((err){
                      print('error');
                    });
                  }),
                  AuthButton(size: size,imagePath: 'assets/icons/email.png',text: 'Continue With Email Number',bgColor: Colors.lightBlueAccent,onPress: (){}),

                ],
              ),

              RichText(text: TextSpan(
                text: 'Don\'t have  an account? ',
                children: [
                  TextSpan(
                    text: 'Sign up',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: kBlackColor,
                        decoration: TextDecoration.underline
                    ),
                      recognizer: TapGestureRecognizer()..onTap = (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
                      }
                  ),
                  TextSpan(
                    text: ' here!',
                      style: TextStyle(color: kBlackColor
                      ),
                  )
                ],
                style: TextStyle(color: kBlackColor
                )
              ))

            ],
          ),

                 ),
      ),
    );
  }
}


