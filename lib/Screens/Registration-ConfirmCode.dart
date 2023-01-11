import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pastpapers/constants.dart';
import 'Components/Topics.dart';
import './Components/SmallRoundedButton.dart';
import './Components/UnderlinedTextFormField.dart';

class ConfirmCode extends StatefulWidget {
  const ConfirmCode({Key? key}) : super(key: key);

  @override
  State<ConfirmCode> createState() => _ConfirmCodeState();
}

class _ConfirmCodeState extends State<ConfirmCode> {
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
            SizedBox(height: Height * 0.010),
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
            SizedBox(height: Height * 0.010),
            Container(
              width: double.infinity,
              height: Height * 0.150,
              color: HexColor("#F0F2F4"),
              child: Container(
                padding: EdgeInsets.only(left: 10, top: Height * 0.030),
                child: Column(
                  children: [
                    const Text(
                      "",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding:
                              EdgeInsets.only(left: 10, top: Height * 0.030),
                          child: const Text(
                            "Number not confirmed yet.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          padding:
                              EdgeInsets.only(right: 10, top: Height * 0.030),
                          child: Icon(
                            Icons.edit,
                            color: HexColor("#EC5F5F"),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: Height * 0.040, left: 20),
              width: double.infinity,
              child: const Text(
                "Confirmation Code",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            LongUnderlinedTextFormField(
              press: () {},
              margin: const EdgeInsets.only( left: 20, right: 20),
            ),
            const SizedBox(height: 10),
           Container(
            margin: const EdgeInsets.only( left: 20, right: 20),
            
              child:  const Text(
                "Confirm phone number with code from sms message.",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                primary: Colors.white,
              ),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  SizedBox(
                    width: 13,
                    height: 23,
                  ),
                  Icon(
                    Icons.replay,
                    color: Colors.red,
                    size: 17,
                  ),
                  SizedBox(width: 7),
                  Text(
                    "Send Again",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            SmallRoundedButton(
              margin: EdgeInsets.only(top: Height * 0.010, left: 20),
              text: "Confirm",
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
