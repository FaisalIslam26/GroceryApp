import 'package:flutter/material.dart';
import 'package:groceriesapp/account.dart';
import 'package:groceriesapp/bottomnav.dart';
import 'package:groceriesapp/filterscreen.dart';
import 'package:groceriesapp/login.dart';
import 'package:groceriesapp/mycart.dart';
import 'package:groceriesapp/signin.dart';
import 'package:groceriesapp/signup.dart';
import 'package:groceriesapp/start_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String title = "CheckBox";
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,

      // // home: filterScreen(),
      // // home: AccountScreen(),
      // // home: BottomNavBar(),
      // // home: StartScreen(),
      // home: SignUpScreen(),
      home: MyCart(),

      // initialRoute: SigninScreen.path,
      // routes: {
      //   SigninScreen.path: (ctx) => SigninScreen(),
      //   StartScreen.path: (ctx) => StartScreen(),
      //   LoginScreen.path: (ctx) => LoginScreen(),
      //   SignUpScreen.path: (ctx) => SignUpScreen(),
      // }
    );
  }
}
