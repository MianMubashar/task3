import 'package:flutter/material.dart';
import 'package:task3/components/constants.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var size=MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: mediumText('Driver Registration',color: kBlackColor),
          elevation: 0,
          leading: IconButton(
            onPressed: (){},
            icon: Icon(Icons.menu,color: kBlackColor,),
          ),
          backgroundColor: kWhiteColor.withOpacity(0),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.my_location,color: kBlackColor,)),
          ],
        ),
        body: Container(
          padding: EdgeInsets.only(left: 15,right: 15,top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              mediumText('Enter the  following details',color: kBlackColor),
              SizedBox(height: size.height * 0.04,),
              TextField(
                 decoration: InputDecoration(
                   isDense: true,
                   filled: true,
                   prefixIcon: Icon(Icons.person, color: kBlackColor,),
                   hintText: 'Name',
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(20),
                     borderSide: BorderSide.none
                   )
                 ),
              ),
              SizedBox(height: size.height * 0.02,),
              TextField(
                decoration: InputDecoration(
                    isDense: true,
                    filled: true,
                    prefixIcon: Icon(Icons.mobile_friendly,color: kBlackColor,),
                    hintText: 'Mobile Number',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none
                    )
                ),
              ),
              SizedBox(height: size.height * 0.02,),
              TextField(
                decoration: InputDecoration(
                    isDense: true,
                    filled: true,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 12,right: 12),
                      child: Image.asset('assets/icons/id.png',height: 10,width: 10,),
                    ),
                    hintText: 'CNIC',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none
                    )
                ),
              ),
              SizedBox(height: size.height * 0.02,),
              TextField(
                decoration: InputDecoration(
                    isDense: true,
                    filled: true,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 12,right: 12),
                      child: Image.asset('assets/icons/licence.png',height: 10,width: 10,),
                    ),
                    hintText: 'Driver Licence Number',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none
                    )
                ),

              ),
              SizedBox(height: size.height * 0.02,),
              TextField(
                decoration: InputDecoration(
                    isDense: true,
                    filled: true,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 12,right: 12),
                      child: Image.asset('assets/icons/car.png',height: 10,width: 10,),
                    ),
                    hintText: 'Vehicle Registration Number',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none
                    )
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width ,
                margin: EdgeInsets.only(left: 20,right: 20,top: size.height * 0.18),
                decoration: BoxDecoration(
                  color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Center(
                  child: smallText('Sign up',color: kBlackColor,fontWeight: FontWeight.w600,size: 16)
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
