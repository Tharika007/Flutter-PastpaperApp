import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pastpapers/Screens/SearchResults.dart';
import 'package:pastpapers/constants.dart';
import './Components/SmallRoundedButton.dart';
import './Components/LongDropdown.dart';
import './Components/SmallDropDown.dart';
import './Signup.dart';
import './Components/Topics.dart';

class SearchPaper extends StatefulWidget {
  const SearchPaper({Key? key}) : super(key: key);

  @override
  State<SearchPaper> createState() => _SearchPaperState();
}

class _SearchPaperState extends State<SearchPaper> {
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
            Container(
              padding: EdgeInsets.only(left: 10, top: Height * 0.040),
              child: const Text(
                "Past Paper - Search",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 23,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            LongDropdown(
              margin: EdgeInsets.only(top: Height * 0.030, left: 20, right: 20),
              labeltext: "Exam Body",
              hintText: "Select exam Body",
              items: const [
                'O/L',
                'A/L',
              ],
              onChanged: () {},
            ),
            LongDropdown(
              margin: EdgeInsets.only(top: Height * 0.030, left: 20, right: 20),
              labeltext: "Exam",
              hintText: "Select Exam",
              items: const ['1', '2', '3'],
              onChanged: () {},
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SmallDropDown(
                  margin: EdgeInsets.only(top: Height * 0.030, left: 20),
                  labeltext: "Year",
                  hintText: "Select Year",
                  items: const [
                    '2021',
                    '2020',
                    '2019',
                    '2018',
                    '2017',
                    '2016',
                    '2015',
                    '2014',
                    '2013',
                    '2012',
                    '2011',
                    '2010',
                  ],
                  onChanged: () {},
                ),
                SmallDropDown(
                  margin: EdgeInsets.only(top: Height * 0.030, right: 20),
                  labeltext: "Medium",
                  hintText: "Select Medium",
                  items: const ['Sinhala', 'English', 'Tamil'],
                  onChanged: () {},
                ),
              ],
            ),
            LongDropdown(
              margin: EdgeInsets.only(top: Height * 0.030, left: 20, right: 20),
              labeltext: "Subject",
              hintText: "Select Subject",
              items: const ['1', '2', '3'],
              onChanged: () {},
            ),
            LongDropdown(
              margin: EdgeInsets.only(top: Height * 0.030, left: 20, right: 20),
              labeltext: "Paper",
              hintText: "Select Paper",
              items: const ['1', '2', '3'],
              onChanged: () {},
            ),
            SmallRoundedButtonwithColor(
              margin: EdgeInsets.only(top: Height * 0.040, left: 20),
              labeltext: "Search",
              backgroudColor: Colors.red,
              icon: Icons.check_outlined,
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SearchResults())),
            ),
          ],
        ),
      ),
    );
  }
}
