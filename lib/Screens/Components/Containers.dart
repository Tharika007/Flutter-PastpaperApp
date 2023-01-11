import 'package:flutter/material.dart';
import './SmallRoundedButton.dart';
import 'package:hexcolor/hexcolor.dart';

class ProfilePhoto extends StatelessWidget {
  final String title;

  const ProfilePhoto({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
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
              height: 90,
            ),
            Container(
              width: 120,
              height: 50,
              child: Text(
                title,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 19),
              ),
            ),
            
            PaperCardButton(
              background: HexColor("#4DC9D1"),
              labeltext: "2 Papers",
              textcolor: Colors.white,
              onPressed: () {},
            ),
            
            PaperCardButton(
              background: HexColor("#0082CD"),
              labeltext: "Answer Sheet",
              textcolor: Colors.white,
              onPressed: () {},
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
  }
}
