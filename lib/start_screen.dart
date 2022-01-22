import 'package:flutter/material.dart';
import 'package:groceriesapp/login.dart';

class StartScreen extends StatelessWidget {
  static const String path = "StarScreen";
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/start.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 200,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(80, 90, 20, 10),
              child: Text(
                "Welcome to our store",
                textAlign: TextAlign.center,
                textScaleFactor: 4,
                maxLines: 2,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
            Text(
              "Get your Groceries in as fast as one hour",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Color(0xffFCFCFCB2),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, LoginScreen.path);
              },
              child: Text("Get Started"),
              style: ElevatedButton.styleFrom(
                primary: Color(0xff53B175),
                minimumSize: Size(353, 67),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(19),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
