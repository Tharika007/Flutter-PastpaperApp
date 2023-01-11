import 'package:flutter/material.dart';
import 'package:pastpapers/constants.dart';
import 'package:pastpapers/Screens/ProfileInfo-Contacts.dart';
import 'package:pastpapers/Screens/ProfileInfo-PersonalInfo.dart';
import 'package:pastpapers/Screens/ProfileInfo-DeliveryAddress.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:hexcolor/hexcolor.dart';
import './Components/Topics.dart';

class ProfileInfo extends StatelessWidget {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
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
            SizedBox(
              width: 11,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox( height: 30,),
          SmoothPageIndicator(
            controller: _controller,
            count: 3,
            effect: ExpandingDotsEffect(
              activeDotColor: HexColor("#EC5F5F"),
              dotColor: Colors.grey,
              dotHeight: 30,
              dotWidth: 30,
              spacing: 8.0,
            ),
          ),
          SizedBox(
            height: 600,
            child: PageView(
              controller: _controller,
              children: const [
                PersonalInfo(),
                Contatcts(),
                DeliverAddress(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
