import 'package:flutter/material.dart';
import 'package:news/Utilities/App_theme_data.dart';
import 'file:///C:/Users/elsayed%20fahmy/Desktop/fluter%20course/news/lib/screens/HomeScreen.dart';
import 'file:///C:/Users/elsayed%20fahmy/Desktop/fluter%20course/news/lib/screens/Onboarding.dart';
import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';

 main() async{

   //SharedPreferences prefs = await SharedPreferences.getInstance();
   bool seen=true;
   bool seen2;
  // seen2= await prefs.getBool('seen');
  Widget _screen=Onboarding();
  if(seen==null ||seen ==false){
    _screen=Onboarding();
  }else  _screen=HomeScreen();
  
   runApp(MyApp(_screen));
   //runApp(MyApp());
}

class MyApp extends StatelessWidget{
   Widget _screen;
   MyApp(this._screen);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: App_theme_data.ppp_theme,
     // home: HomeScreen(),
      home: this._screen,
    );
  }

}













