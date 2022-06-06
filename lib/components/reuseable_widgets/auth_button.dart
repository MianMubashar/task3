import 'package:flutter/material.dart';

import '../constants.dart';
class AuthButton extends StatelessWidget {
   AuthButton({
    Key? key,
    required this.size,
    required this.text,
    required this.bgColor,
    required this.imagePath,
    this.isGoogle=false,
     required this.onPress
  }) : super(key: key);

  final Size size;
  final String imagePath;
  final String text;
  final Color bgColor;
  bool isGoogle;
  VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        height: size.height * 0.07,
        width:  size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(40),bottomLeft: Radius.circular(40),topRight: Radius.circular(15),bottomRight: Radius.circular(15)),
            color: bgColor
        ),
        child: Row(
          children: [
            isGoogle == false ?
            Image.asset(imagePath) : Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kWhiteColor
              ),
              child: Image.asset(imagePath),
            ),
            SizedBox(width: size.width * 0.06,),
            smallText(text,color: kBlackColor,)
          ],
        ),
      ),
    );
  }
}
