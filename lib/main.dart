import 'package:flutter/material.dart';
import 'package:groceriesapp/account.dart';
import 'package:groceriesapp/filterscreen.dart';

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
      home: filterScreen(),
      // home: AccountScreen(),
    );
  }
}
