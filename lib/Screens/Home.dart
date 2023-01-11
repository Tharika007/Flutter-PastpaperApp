import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pastpapers/Screens/SearchPaper.dart';
import 'package:pastpapers/constants.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../Screens/Components/Topics.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../Screens/Components/SmallRoundedButton.dart';
import './Components/LongRoundedButtons.dart';

class CardItem {
  final String title;
  final String urlImage;
  final void Function()? onPressed;

  const CardItem({
    required this.title,
    required this.urlImage,
    this.onPressed,
  });
}

class ButtonSet {
  final String title;
  final void Function()? onPressed;

  const ButtonSet({
    required this.title,
    this.onPressed,
  });
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int activeIndex = 0;

  final List<String> topimages = [
    'lib/Images/OL.png',
    'lib/Images/AL.png',
    'lib/Images/pq.png',
    'lib/Images/School.png',
  ];
// **************************************
  List<CardItem> OLCrads = [
    CardItem(
      title: "Mathematics - Dec 2020",
      urlImage: "",
      onPressed: () {},
    ),
    CardItem(
      title: "Science - Dec 2020",
      urlImage: "",
      onPressed: () {},
    ),
    CardItem(
      title: "English - Dec 2020",
      urlImage: "",
      onPressed: () {},
    ),
    CardItem(
      title: "Religion - Dec 2020",
      urlImage: "",
      onPressed: () {},
    ),
    CardItem(
      title: "Sinhala - Dec 2020",
      urlImage: "",
      onPressed: () {},
    ),
    CardItem(
      title: "Music - Dec 2020",
      urlImage: "",
      onPressed: () {},
    ),
    CardItem(
      title: "Commerce - Dec 2020",
      urlImage: "",
      onPressed: () {},
    ),
  ];
  //*************Buttons Set For O/L********************** */

  List<ButtonSet> OLbuttons = [
    ButtonSet(
      title: "All",
      onPressed: () {},
    ),
    ButtonSet(
      title: "Maths",
      onPressed: () {},
    ),
    ButtonSet(
      title: "Sinhala",
      onPressed: () {},
    ),
    ButtonSet(
      title: "Science",
      onPressed: () {},
    ),
    ButtonSet(
      title: "English",
      onPressed: () {},
    ),
    ButtonSet(
      title: " Music",
      onPressed: () {},
    ),
    ButtonSet(
      title: "Religion",
      onPressed: () {},
    ),
  ];

  //************* Advanced Level******************* */
  List<CardItem> ALcards = [
    CardItem(
      title: "Combined Maths",
      urlImage: "",
      onPressed: () {},
    ),
    CardItem(
      title: "Biology",
      urlImage: "",
      onPressed: () {},
    ),
    CardItem(
      title: "Physics",
      urlImage: "",
      onPressed: () {},
    ),
    CardItem(
      title: "Chemistry",
      urlImage: "",
      onPressed: () {},
    ),
    CardItem(
      title: "Accounting",
      urlImage: "",
      onPressed: () {},
    ),
    CardItem(
      title: "Business Studies",
      urlImage: "",
      onPressed: () {},
    ),
    CardItem(
      title: "Political Science",
      urlImage: "",
      onPressed: () {},
    ),
  ];

//*************Buttons Set For A/L********************** */
  List<ButtonSet> ALButtons = [
    ButtonSet(
      title: "All",
      onPressed: () {},
    ),
    ButtonSet(
      title: "Mathematics",
      onPressed: () {},
    ),
    ButtonSet(
      title: "Biology",
      onPressed: () {},
    ),
    ButtonSet(
      title: "Commerce",
      onPressed: () {},
    ),
    ButtonSet(
      title: "Arts",
      onPressed: () {},
    ),
  ];

//*************Button Set For Professional Qualifications********************** */
  List<ButtonSet> professionalButtons = [
    ButtonSet(
      title: "All",
      onPressed: () {},
    ),
    ButtonSet(
      title: "CIMA",
      onPressed: () {},
    ),
    ButtonSet(
      title: "CIM",
      onPressed: () {},
    ),
    ButtonSet(
      title: "Marketing",
      onPressed: () {},
    ),
    ButtonSet(
      title: "IT",
      onPressed: () {},
    ),
  ];

//*************Cards Set For Professional Qualifications********************** */
  List<CardItem> professionalCards = [
    CardItem(
      title: "Information Technology",
      urlImage: "",
      onPressed: () {},
    ),
    CardItem(
      title: "CIMA",
      urlImage: "",
      onPressed: () {},
    ),
    CardItem(
      title: "CIM",
      urlImage: "",
      onPressed: () {},
    ),
    CardItem(
      title: "Marketing",
      urlImage: "",
      onPressed: () {},
    ),
  ];

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
            Container(
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
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: MediumRoundedButtonwithColor(
                width: 250,
                text: "Search Paper",
                backgroundcolor: HexColor("#EC5F5F"),
                color: Colors.white,
                margin: const EdgeInsets.only(right: 20, bottom: 10),
                press: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SearchPaper()),
                ),
              ),
            ),
            CarouselSlider.builder(
              options: CarouselOptions(
                height: 280,
                autoPlay: true,
                reverse: true,
                viewportFraction: 1,
                enlargeCenterPage: false,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
                autoPlayInterval: const Duration(seconds: 1),
                onPageChanged: (index, reason) =>
                    setState(() => activeIndex = index),
              ),
              itemCount: topimages.length,
              itemBuilder: (context, index, realIndex) {
                final urlImage = topimages[index];
                return buildtoImages(urlImage, index);
              },
            ),
            const SizedBox(height: 12),
            buildIndicator(),
            const SizedBox(
              height: 20,
            ),
            const SubjectTopic(
              margin: EdgeInsets.only(left: 5),
              maintext: "Ordinary Level - ",
              subtext: "Past Papers",
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                separatorBuilder: (context, _) => const SizedBox(
                  width: 12,
                ),
                itemBuilder: (context, index) =>
                    buildButtons(button: OLbuttons[index]),
              ),
            ),
            Container(
              height: 300,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                separatorBuilder: (context, _) => const SizedBox(
                  width: 12,
                ),
                itemBuilder: (context, index) =>
                    buildcard(item: OLCrads[index]),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const SubjectTopic(
              margin: EdgeInsets.only(left: 5),
              maintext: "Advanced Level - ",
              subtext: "Past Papers",
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                separatorBuilder: (context, _) => const SizedBox(
                  width: 12,
                ),
                itemBuilder: (context, index) =>
                    buildButtons(button: ALButtons[index]),
              ),
            ),
            Container(
              height: 300,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                separatorBuilder: (context, _) => const SizedBox(
                  width: 12,
                ),
                itemBuilder: (context, index) =>
                    buildcard(item: ALcards[index]),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const SubjectTopic(
              margin: EdgeInsets.only(left: 5),
              maintext: "Professional Qualifications - ",
              subtext: "Past Papers",
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                separatorBuilder: (context, _) => const SizedBox(
                  width: 12,
                ),
                itemBuilder: (context, index) =>
                    buildButtons(button: professionalButtons[index]),
              ),
            ),
            Container(
              height: 300,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                separatorBuilder: (context, _) => const SizedBox(
                  width: 12,
                ),
                itemBuilder: (context, index) =>
                    buildcard(item: professionalCards[index]),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildcard({
    required CardItem item,
  }) =>
      Container(
        width: 240,
        height: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          image: const DecorationImage(
            image: AssetImage("lib/Images/Background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 5, right: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 120,
              ),
              Container(
                width: 150,
                height: 50,
                child: Text(
                  item.title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 19),
                ),
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  PaperCardButton(
                    background: HexColor("#4DC9D1"),
                    labeltext: "2 Papers",
                    textcolor: Colors.white,
                    onPressed: () {},
                  ),
                  const SizedBox(width: 5),
                  PaperCardButton(
                    background: HexColor("#0082CD"),
                    labeltext: "Answer Sheet",
                    textcolor: Colors.white,
                    onPressed: () {},
                  ),
                ],
              ),
              PaperCardButton(
                background: HexColor("#8D5EF2"),
                labeltext: "Paper Discussion",
                textcolor: Colors.white,
                onPressed: () {},
              ),
            ],
          ),
        ),
      );

  Widget buildtoImages(String urlImage, int index) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 12),
        color: Colors.white,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Image.asset(
            urlImage,
            fit: BoxFit.cover,
          ),
        ),
      );

  Widget buildButtons({
    required ButtonSet button,
  }) =>
      Container(
        width: 100,
        height: 10,
        child: RaisedButton(
          onPressed: button.onPressed,
          color: HexColor("#F6F7FA"),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          child: Text(button.title,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold)),
        ),
      );

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: topimages.length,
        effect: JumpingDotEffect(
          dotWidth: 20,
          dotHeight: 20,
          activeDotColor: HexColor("#EC5F5F"),
          dotColor: Colors.grey,
        ),
      );
}
