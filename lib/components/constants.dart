
import 'package:flutter/material.dart';

//colors
const Color kWhiteColor=Color(0xFFFFFFFF);
const Color kBlackColor=Color(0xFF000000);




//texts
Text largerText(String text,{Color color=kWhiteColor,double size=32,FontWeight fontWeight=FontWeight.w600,TextOverflow textOverflow=TextOverflow.ellipsis, }){
  return Text(text,style: TextStyle(color: color,fontSize: size,fontWeight: fontWeight,fontFamily: 'Monoton'),overflow: textOverflow,);
}
Text mediumText(String text,{Color color=kWhiteColor,double size=18,FontWeight fontWeight=FontWeight.w600,TextOverflow textOverflow=TextOverflow.ellipsis}){
  return Text(text,style: TextStyle(color: color,fontSize: size,fontWeight: fontWeight),overflow: textOverflow,);
}
Text smallText(String text,{Color color=kWhiteColor,double size=14,FontWeight fontWeight=FontWeight.w600,TextOverflow textOverflow=TextOverflow.ellipsis}){
  return Text(text,style: TextStyle(color: color,fontSize: size,fontWeight: fontWeight),overflow: textOverflow,);
}
