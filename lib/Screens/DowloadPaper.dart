import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pastpapers/Screens/Home.dart';
import 'package:pastpapers/Screens/Login.dart';
import 'package:pastpapers/constants.dart';
import 'Components/Topics.dart';
import './Components/SmallRoundedButton.dart';
import './Components/LongRoundedButtons.dart';

class DownloadPaper extends StatefulWidget {
  @override
  State<DownloadPaper> createState() => _DownloadPaperState();
}

class _DownloadPaperState extends State<DownloadPaper> {
  @override
  Widget build(BuildContext context) {
    final Height =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    //kToolbarHeight;
    final Width = MediaQuery.of(context).size.width;

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: HexColor("#EC5F5F"),
        unselectedItemColor: Colors.grey,
        iconSize: 27,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard_outlined),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.flash_auto),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.email_outlined),
            label: 'Messeges',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Profile',
          ),
        ],
      ),
      backgroundColor: primarycolor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: primarycolor,
        title: Row(
          children: [
            InkWell(
              onTap: () {},
              child: Icon(
                Icons.menu,
                color: HexColor("#EC5F5F"),
                size: 30,
              ),
            ),
            const SizedBox(width: 130),
            Align(
              alignment: Alignment.center,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  image: const DecorationImage(
                    image: AssetImage("lib/Images/avatar.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 11,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 15,
                ),
                const UserName(
                  text: "janith B",
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.lightbulb_outline,
                        color: HexColor("#FCD035"),
                        size: 15,
                      ),
                      const SizedBox(width: 7),
                      Icon(
                        Icons.add,
                        color: HexColor("#FCD035"),
                        size: 15,
                      ),
                      const SizedBox(width: 2),
                      Text(
                        "1600 points",
                        style: TextStyle(
                            fontSize: 15,
                            color: HexColor("#FCD035"),
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 5),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: Height * 0.050),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const subText2(
                  text:
                      "Sinhala | Question Paper | Paper - 1 | Decemeber | 2020",
                  margin: EdgeInsets.only(left: 5),
                ),
                SmallRoundedButtonwithColorNoIcon(
                  margin: const EdgeInsets.only(right: 20),
                  labeltext: "Download",
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Home())),
                ),
              ],
            ),
            const Divider(thickness: 2, color: Colors.grey),
            Container(
              height: 500,
              child: Align(
                alignment: Alignment.bottomRight,
                child: MediumRoundedButtonwithColor(
                  width: 200,
                  text: "Subscribe",
                  backgroundcolor: HexColor("#EC5F5F"),
                  color: Colors.white,
                  margin: const EdgeInsets.only(right: 20, bottom: 10),
                  press: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Login()),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
