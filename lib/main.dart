import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:walify/Screens/hompage.dart';
import 'package:walify/Screens/infopage.dart';
import 'package:walify/Screens/login.dart';
import 'package:walify/Screens/searched.dart';
import 'package:walify/Screens/splash.dart';
import 'package:walify/configs/themes.dart';


void main(List<String> args) {
  runApp(   MaterialApp(
    
    debugShowCheckedModeBanner: false,
    home:splash_Screen(),
    theme: ThemeData(textTheme: mythem),
   ));
}


 
 