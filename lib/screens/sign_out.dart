import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task3/components/constants.dart';
import 'package:task3/provider/auth_provider.dart';
class SignOut extends StatelessWidget {
  const SignOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: size.width,
          height: size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              mediumText('hy ${Provider.of<AuthProvider>(context,listen: false).firebaseAuth.currentUser!.displayName}',color: kBlackColor),

              InkWell(
                onTap: (){
                  Provider.of<AuthProvider>(context,listen: false).signOut(context: context);
                },
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  width: size.width * 0.3,
                  height:  size.height * 0.05,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(child: Text('Logout')),
                ),
              )
            ],
          ),
        ),
      ),
    );;
  }
}
