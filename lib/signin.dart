import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SigninScreen extends StatelessWidget {
  static const String path = "SigninScreen";
  const SigninScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset("assets/images/banner.png"),
          Text(
            "Get your groceries with nectar",
            maxLines: 2,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 26,
            ),
          ),
          Row(
            children: [
              Image.asset("assets/images/bd.png"),
              Text("+880"),
            ],
          ),
          Divider(
            thickness: 1,
          ),
          Text("Or Connect with Social Media"),
          ElevatedButton(
            onPressed: () {},
            child: Row(
              children: [
                Icon(Icons.facebook_outlined),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Continue with facebook",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            style: ElevatedButton.styleFrom(
              primary: Color(0xfff4A66AC),
              minimumSize: Size(double.infinity, 67),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(19),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Row(
              children: [
                FaIcon(FontAwesomeIcons.google),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Continue with Google",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
              minimumSize: Size(double.infinity, 67),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(19),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
