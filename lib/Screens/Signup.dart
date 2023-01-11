import 'package:flutter/material.dart';
import 'package:passwordfield/passwordfield.dart';
import 'package:pastpapers/Screens/Registration.dart';
import 'package:pastpapers/constants.dart';
import 'Components/RoundedLongTextField.dart';
import 'Components/Topics.dart';
import 'Components/LongRoundedButtons.dart';
import './Login.dart';
import 'package:hexcolor/hexcolor.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    final Height =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    //kToolbarHeight;
    final Width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: primarycolor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: Height * 0.050),
            Logo(
              margin: EdgeInsets.only(top: Height * 0.020, right: 20, left: 20),
              text: 'Pastpapers',
            ),
            RoundedTextFormField(
              margin:
                  EdgeInsets.only(bottom: Height * 0.025, right: 25, left: 25),
              text: "Fullname",
              press: () {},
            ),
            RoundedTextFormField(
              margin:
                  EdgeInsets.only(bottom: Height * 0.025, right: 25, left: 25),
              text: "Email",
              press: () {},
            ),
            PasswordTextField(
              margin:
                  EdgeInsets.only(bottom: Height * 0.025, right: 25, left: 25),
              text: "Password",
              press: () {},
              icon: Icons.visibility,
            ),
            LongRoundedButton(
              margin:
                  EdgeInsets.only(bottom: Height * 0.050, right: 25, left: 25),
              text: 'Sign Up',
              press: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Registration())),
              color: Colors.white,
              backgroundcolor: const Color.fromRGBO(236, 95, 95, 1),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Expanded(
                  child: Divider(
                    indent: 20.0,
                    endIndent: 10.0,
                    thickness: 2,
                  ),
                ),
                Text(
                  "OR",
                  style: TextStyle(color: Colors.blueGrey),
                ),
                Expanded(
                  child: Divider(
                    indent: 10.0,
                    endIndent: 20.0,
                    thickness: 2,
                  ),
                ),
              ],
            ),
            LongRoundedButtonwithIcon(
              icon: Icons.facebook,
              margin: EdgeInsets.only(top: Height * 0.040, right: 25, left: 25),
              text: 'Log in with Facebook',
              press: () {},
              color: Colors.white,
              backgroundcolor: const Color.fromRGBO(0, 130, 205, 1),
            ),
            Container(
              margin: EdgeInsets.only(top: Height * 0.040, right: 25, left: 25),
              height: Height * 0.070,
              child: FlatButton(
                onPressed: () {},
                color: HexColor("#F0F2F4"),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "lib/Images/Google.png",
                      height: 25,
                      width: 25,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "Login with Google",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: Height * 0.050),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  "By signing up you accept the",
                  style: TextStyle(color: Colors.blueGrey, fontSize: 17),
                ),
                const SizedBox(width: 4),
                InkWell(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  ),
                  child: const Text(
                    "Terms of Service",
                    style: TextStyle(
                        color: Color.fromRGBO(0, 130, 205, 1), fontSize: 17),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  "and",
                  style: TextStyle(color: Colors.blueGrey, fontSize: 17),
                ),
                const SizedBox(width: 4),
                InkWell(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  ),
                  child: const Text(
                    "Privacy Policy",
                    style: TextStyle(
                        color: Color.fromRGBO(0, 130, 205, 1), fontSize: 17),
                  ),
                ),
              ],
            ),
            SizedBox(height: Height * 0.050),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  "Already have an account?",
                  style: TextStyle(color: Colors.blueGrey, fontSize: 18),
                ),
                const SizedBox(width: 4),
                InkWell(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  ),
                  child: const Text(
                    "Log in",
                    style: TextStyle(
                        color: Color.fromRGBO(0, 130, 205, 1), fontSize: 18),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
