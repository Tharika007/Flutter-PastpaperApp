import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pastpapers/Screens/Home.dart';
import 'package:pastpapers/Screens/Signup.dart';
import 'package:pastpapers/constants.dart';
import 'Components/RoundedLongTextField.dart';
import 'Components/Topics.dart';
import 'Components/LongRoundedButtons.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
              text: 'Log in',
              press: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Home()),
              ),
              color: Colors.white,
              backgroundcolor: const Color.fromRGBO(236, 95, 95, 1),
            ),
            Container(
              margin:
                  EdgeInsets.only(bottom: Height * 0.040, right: 25, left: 25),
              child: InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Login()),
                ),
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(
                      color: Color.fromRGBO(0, 130, 205, 1),
                      fontSize: 19,
                      fontWeight: FontWeight.bold),
                ),
              ),
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
            SizedBox(height: Height * 0.070),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  "Don't have an account?",
                  style: TextStyle(color: Colors.blueGrey, fontSize: 18),
                ),
                const SizedBox(width: 4),
                InkWell(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Signup()),
                  ),
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                        color: Color.fromRGBO(0, 130, 205, 1), fontSize: 18),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
