import 'package:bloodbank/addfile.dart';
import 'package:bloodbank/details.dart';
import 'package:bloodbank/homepage.dart';
import 'package:bloodbank/specific.dart';
import 'package:bloodbank/splash.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home:Splash1() ,
      // initialRoute: "/addfile",
      // initialRoute: "/homepage",
      //  initialRoute: "/details",
      routes: {
        "/details":(context)=>Details(),
        "/addfile":(context)=>AddFile(),
        "/homepage":(context)=>HomePage(),
        "/details1":(context)=>Details1(),
      },
    )
  );
}