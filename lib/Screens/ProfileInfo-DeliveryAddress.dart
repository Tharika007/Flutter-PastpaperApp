import 'package:flutter/material.dart';
import 'package:pastpapers/Screens/SearchPaper.dart';
import 'package:pastpapers/constants.dart';
import 'Components/Topics.dart';
import './Components/SmallRoundedButton.dart';
import './Components/UnderlinedTextFormField.dart';
import './Components/LongDropdown.dart';
import './Components/SmallDropDown.dart';

class DeliverAddress extends StatefulWidget {
  const DeliverAddress({Key? key}) : super(key: key);

  @override
  State<DeliverAddress> createState() => _DeliverAddressState();
}

class _DeliverAddressState extends State<DeliverAddress> {
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
                margin: EdgeInsets.only(
                    bottom: Height * 0.010, right: 25, left: 25),
              ),
              const subText(
                text:
                    "Fill in the data for profile. It will take a couple of minitues.",
                margin: EdgeInsets.only(left: 20, right: 20),
              ),
              const Divider(thickness: 2, color: Colors.grey),
              Container(
                width: double.infinity,
                margin:
                    EdgeInsets.only(top: Height * 0.030, left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      "Delivery Address",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: primaryblackcolor,
                      ),
                    ),
                    SizedBox(height: Height * 0.010),
                    const Text(
                      "Used for shipping orders",
                      style: TextStyle(
                        fontSize: 15,
                        color: primaryblackcolor,
                      ),
                    ),
                  ],
                ),
              ),
              UnderlinedTextFormFieldwithLabelNoIcon(
              margin:
                    EdgeInsets.only(top: Height * 0.030, left: 20, right: 20),
                label: "Address",
                press: () {},
              ),
              LongDropdown(
                margin:
                    EdgeInsets.only(top: Height * 0.030, left: 20, right: 20),
                labeltext: "City",
                hintText: "Select City",
                items: const ['1', '2', '3'],
                onChanged: () {},
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SmallDropDown(
                    margin:
                    EdgeInsets.only(top: Height * 0.050, left: 20, right: 5),
                    labeltext: "Country",
                    hintText: "Select Country",
                    items: const [
                      'USA',
                      'UK',
                    ],
                    onChanged: () {},
                  ),
                  SmallDropDown(
                    margin:
                    EdgeInsets.only(top: Height * 0.050, right: 20),
                    labeltext: "Zip code",
                    hintText: "Select Zipcdoe",
                    items: const ['1', '2', '3'],
                    onChanged: () {},
                  ),
                ],
              ),
              SmallRoundedButtonWithIcon(
                    icon: Icons.forward,
                    margin: EdgeInsets.only(top: Height * 0.030, left: 125),
                    labeltext: "Go Next",
                    onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SearchPaper())),
                  ),
            ],
          ),
        ),
      
    );
  }
}
