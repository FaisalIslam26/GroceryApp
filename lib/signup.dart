import 'package:flutter/material.dart';
import 'package:groceriesapp/login.dart';

class SignUpScreen extends StatefulWidget {
  static const String path = "SignUpScreen";
  final TextEditingController? controller;

  const SignUpScreen({Key? key, this.controller}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool ishiddenPassword = false;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordControlller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image(
                    image: AssetImage("assets/images/carrot.png"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 40,
                  ),
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 26,
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    "Enter your Credentials to Continue",
                    style: TextStyle(fontSize: 16, color: Color(0xfff7C7C7C)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "XYZ",
                      labelText: "Username",
                      labelStyle: TextStyle(
                        color: Color(0xfff7C7C7C),
                        fontSize: 16,
                      ),
                      border: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      focusedBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: Color(0xfff7C7C7C),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                      labelText: "Email",
                      labelStyle: TextStyle(
                        color: Color(0xfff7C7C7C),
                        fontSize: 16,
                      ),
                      suffixIcon:
                          InkWell(onTap: () {}, child: Icon(Icons.check)),
                      border: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xfff7C7C7C),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: TextFormField(
                    controller: passwordControlller,
                    obscureText: !ishiddenPassword,
                    decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle: TextStyle(
                        color: Color(0xfff7C7C7C),
                        fontSize: 16,
                      ),
                      suffixIcon: InkWell(
                        onTap: _togglePasswordView,
                        child: Icon(ishiddenPassword
                            ? Icons.visibility
                            : Icons.visibility_off),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xfff7C7C7C),
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                        "By continuing you agree with our Terms of Service and Privacy Policy"),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff53B175),
                        minimumSize: Size(double.infinity, 67),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(19),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an Account?",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, LoginScreen.path);
                            },
                            child: Text(
                              "Sign In",
                              style: TextStyle(color: Color(0xff53B175)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _togglePasswordView() {
    // if (ishiddenPassword == true) {
    //   ishiddenPassword = false;
    // } else {
    //   ishiddenPassword = true;
    // }
    setState(() {
      ishiddenPassword = !ishiddenPassword;
    });
  }
}
