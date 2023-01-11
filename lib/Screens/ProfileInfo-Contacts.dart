import 'package:flutter/material.dart';
import 'package:pastpapers/constants.dart';
import 'Components/Topics.dart';
import './Components/SmallRoundedButton.dart';
import './Components/UnderlinedTextFormField.dart';

class Contatcts extends StatefulWidget {
  const Contatcts({Key? key}) : super(key: key);

  @override
  State<Contatcts> createState() => _ContatctsState();
}

class Item {
  const Item(this.name, this.icon);
  final String name;
  final Icon icon;
}

class _ContatctsState extends State<Contatcts> {
  TextEditingController nameController = TextEditingController();

  List<Item> social = [
    const Item(
        'Facebook',
        Icon(
          Icons.facebook_outlined,
          color: Colors.grey,
        )),
    const Item(
        'Skype',
        Icon(
          Icons.facebook_outlined,
          color: Colors.grey,
        )),
    const Item(
        'Linkedin',
        Icon(
          Icons.facebook,
          color: Colors.grey,
        )),
  ];

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
            subText(
              text:
                  "Fill in the data for profile. It will take a couple of minitues.You only need a passport",
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
                bottom: Height * 0.010,
              ),
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
                    "Contacts",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: primaryblackcolor,
                    ),
                  ),
                  SizedBox(height: Height * 0.010),
                  const Text(
                    "These contatcts ate used to inform about orders",
                    style: TextStyle(
                      fontSize: 15,
                      color: primaryblackcolor,
                    ),
                  ),
                ],
              ),
            ),
            UnderlinedTextFormFieldwithIcon(
              icon: Icons.mail_outline,
              press: () {},
              margin: EdgeInsets.only(top: Height * 0.030, left: 20, right: 20),
            ),
            UnderlinedTextFormFieldwithIcon(
              icon: Icons.phone,
              press: () {},
              margin: EdgeInsets.only(
                  top: Height * 0.030,
                  left: 20,
                  right: 20,
                  bottom: Height * 0.030),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: Height * 0.030, left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    "Social Network",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: primaryblackcolor,
                    ),
                  ),
                  SizedBox(height: Height * 0.010),
                  const Text(
                    "Indicate the desired communication method",
                    style: TextStyle(
                      fontSize: 15,
                      color: primaryblackcolor,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(top: Height * 0.030, left: 20),
                  child: DropdownButton(
                    items: social.map((Item socials) {
                      return DropdownMenuItem(
                        onTap: () {},
                        value: socials,
                        child: Row(
                          children: [
                            socials.icon,
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              socials.name,
                              style: const TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        value;
                      });
                    },
                  ),
                ),
                UnderlinedTextFormField(
                  margin: const EdgeInsets.only(right: 20),
                  press: () {},
                ),
              ],
            ),
            SizedBox(
              height: Height * 0.030,
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
                    width: 20,
                  ),
                  Icon(
                    Icons.add,
                    color: Color.fromARGB(255, 7, 92, 161),
                    size: 21,
                  ),
                  SizedBox(width: 7),
                  Text(
                    "Add More",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 7, 92, 161),
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SmallRoundedButtonWithIcon(
              margin: EdgeInsets.only(top: Height * 0.030, left: 125),
              icon: Icons.forward,
              labeltext: "Go Next",
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
