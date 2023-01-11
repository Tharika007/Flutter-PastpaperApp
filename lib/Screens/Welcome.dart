import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pastpapers/Screens/Login.dart';
import 'package:pastpapers/constants.dart';
import 'Components/Topics.dart';
import './Components/SmallRoundedButton.dart';
import './Components/LongRoundedButtons.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

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
          children: [
            Container(
              height: Height * 0.1,
              margin: EdgeInsets.only(
                  bottom: Height * 0.2, right: 25, left: 25, top: Height * 0.3),
              child: const Text(
                "Pastpapers",
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 25, left: 25),
              child: const Text(
                "Welcome to past papers",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              margin:
                  EdgeInsets.only(bottom: Height * 0.2, right: 25, left: 25),
              child: const Text(
                "Best and popular apps for education, Past papers from all varities.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
            ),
            LongRoundedButton(
              margin:
                  EdgeInsets.only(bottom: Height * 0.050, right: 25, left: 25),
              text: 'Get Started',
              press: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Login())),
              color: Colors.white,
              backgroundcolor: const Color.fromRGBO(236, 95, 95, 1),
            ),
          ],
        ),
      ),
    );
  }
}
