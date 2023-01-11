import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pastpapers/Screens/ProfileInfo.dart';
import 'package:pastpapers/constants.dart';
import 'Components/Topics.dart';
import './Components/SmallRoundedButton.dart';
import './Components/UnderlinedTextFormField.dart';
import './Components/RoundedLongTextField.dart';

class RegisterNow extends StatefulWidget {
  const RegisterNow({Key? key}) : super(key: key);

  @override
  State<RegisterNow> createState() => _RegisterNowState();
}

class _RegisterNowState extends State<RegisterNow> {
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
            MainTopic(
              text: "Registration",
              margin:
                  EdgeInsets.only(bottom: Height * 0.010, right: 25, left: 25),
            ),
            const subText(
              text:
                  "Fill the Registration data. It will take a couple of minutes. All you need is a phone number and e-mail.",
              margin: EdgeInsets.only(left: 20, right: 20),
            ),
            Container(
              width: double.infinity,
              height: Height * 0.100,
              color: HexColor("#F0F2F4"),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10, top: Height * 0.030),
                    child: const Text(
                      "",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10, top: Height * 0.010),
                    child: const Text(
                      "Number confirmed.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            UnderlinedTextFormFieldwithLabelNoIcon(
              label: "Enter your Email",
              press: () {},
              margin: EdgeInsets.only(top: Height * 0.020, left: 20, right: 20),
            ),
            UnderlinedPasswordTextField(
              margin: EdgeInsets.only(
                  top: Height * 0.030,
                  bottom: Height * 0.020,
                  right: 20,
                  left: 20),
              text: "Set s Password",
              press: () {},
              icon: Icons.visibility,
            ),
            SmallRoundedButtonwithColorNoIcon(
              margin: EdgeInsets.only(top: Height * 0.020, left: 120),
              labeltext: "Register Now",
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileInfo()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
