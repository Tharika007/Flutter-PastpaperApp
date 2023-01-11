import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:country_list_pick/country_list_pick.dart';
import 'package:pastpapers/constants.dart';
import 'Components/Topics.dart';
import './Registration-ConfirmCode.dart';
import './Components/SmallRoundedButton.dart';
import './Components/UnderlinedTextFormField.dart';

class AddPhone extends StatefulWidget {
  const AddPhone({Key? key}) : super(key: key);

  @override
  State<AddPhone> createState() => _AddPhoneState();
}

class _AddPhoneState extends State<AddPhone> {
  @override
  void initState() {
    super.initState();
  }

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
              height: Height * 0.150,
              color: HexColor("#F0F2F4"),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 10, top: Height * 0.030),
                    child: const Icon(
                      Icons.lock,
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    width: 250,
                    padding:
                        EdgeInsets.only(left: 5, right: 5, top: Height * 0.030),
                    child: const Text(
                      "we take privacy issues seriously. You can be sure that your personal data is securely protected.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 10, top: Height * 0.030),
                    child: const Icon(
                      Icons.close,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: Height * 0.030, left: 20),
              width: double.infinity,
              child: const Text(
                "Enter your phone number",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  width: 8,
                ),
                CountryListPick(
                  appBar: AppBar(
                    backgroundColor: HexColor("#EC5F5F"),
                    title: const Text('Pick your country'),
                  ),
                  theme: CountryTheme(
                    isShowFlag: true,
                    isShowTitle: false,
                    isShowCode: true,
                    isDownIcon: true,
                    showEnglishName: false,
                    labelColor: Colors.blueAccent,
                  ),
                  initialSelection: '+94',
                ),
                UnderlinedTextFormField(
                  press: () {},
                  margin: EdgeInsets.only(top: Height * 0.010, left: 5),
                ),
                const SizedBox(
                  width: 8,
                ),
              ],
            ),
            SmallRoundedButton(
              margin: EdgeInsets.only(top: Height * 0.050, left: 20),
              text: "Send Code",
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
