import 'package:flutter/material.dart';
import 'package:pastpapers/constants.dart';
import 'Components/Topics.dart';
import './Components/SmallRoundedButton.dart';
import './Components/UnderlinedTextFormField.dart';
import './Components/LongDropdown.dart';

class PersonalInfo extends StatefulWidget {
  const PersonalInfo({Key? key}) : super(key: key);

  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
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
              text: "Profile Info",
              margin:
                  EdgeInsets.only(bottom: Height * 0.010, right: 25, left: 25),
            ),
            const subText(
              text:
                  "Fill in the data for profile. It will take a couple of minitues.",
              margin: EdgeInsets.only(left: 20, right: 20),
            ),
            const Divider(thickness: 2, color: Colors.grey),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: Height * 0.030, left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    "Personal data",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: primaryblackcolor,
                    ),
                  ),
                  SizedBox(height: Height * 0.010),
                  const Text(
                    "Specify exactly as in your passport",
                    style: TextStyle(
                      fontSize: 15,
                      color: primaryblackcolor,
                    ),
                  ),
                  UnderlinedTextFormFieldwithLabelNoIcon(
                    margin: EdgeInsets.only(
                        top: Height * 0.030, left: 10, right: 10),
                    label: "First name",
                    press: () {},
                  ),
                  UnderlinedTextFormFieldwithLabelNoIcon(
                    margin: EdgeInsets.only(
                        top: Height * 0.030, left: 10, right: 10),
                    label: "Second name",
                    press: () {},
                  ),
                  LongDropdown(
                    margin: EdgeInsets.only(
                        top: Height * 0.030, left: 10, right: 10),
                    labeltext: "Date of Birth",
                    hintText: "Select Date of Birthday",
                    items: const ['1', '2', '3'],
                    onChanged: () {},
                  ),
                  LongDropdown(
                    margin: EdgeInsets.only(
                        top: Height * 0.030, left: 10, right: 10),
                    labeltext: "Palce of Birth",
                    hintText: "Select Place",
                    items: const ['1', '2', '3'],
                    onChanged: () {},
                  ),
                  SmallRoundedButtonWithIcon(
                    icon: Icons.forward,
                    margin: EdgeInsets.only(top: Height * 0.030, left: 95),
                    labeltext: "Go Next",
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
