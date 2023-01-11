import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pastpapers/Screens/Questionpaper.dart';
import 'package:pastpapers/constants.dart';
import './Components/Topics.dart';
import './Components/Containers.dart';

class SubjectPastpapers extends StatefulWidget {
  const SubjectPastpapers({Key? key}) : super(key: key);

  @override
  State<SubjectPastpapers> createState() => _SubjectPastpapersState();
}

class _SubjectPastpapersState extends State<SubjectPastpapers> {
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
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              SizedBox(
                height: Height * 0.050,
              ),
              const SubjectTopic(
                margin: EdgeInsets.only(left: 0),
                maintext: "Ordinary Level - ",
                subtext: "Past Papers",
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const QuestionPaper())),
                    child: const ProfilePhoto(title: "Sinhala"),
                  ),
                  const ProfilePhoto(title: "Mathematics"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  ProfilePhoto(title: "English"),
                  ProfilePhoto(title: "Sinhala"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  ProfilePhoto(title: "Science"),
                  ProfilePhoto(title: "Music"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  ProfilePhoto(title: "Commerce"),
                  ProfilePhoto(title: "Drama"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
