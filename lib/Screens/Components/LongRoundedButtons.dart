import 'package:flutter/material.dart';

import '/../constants.dart';

class LongRoundedButtonwithIcon extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor, backgroundcolor;
  final EdgeInsets margin;
  final IconData icon;

  const LongRoundedButtonwithIcon({
    Key? key,
    required this.icon,
    required this.text,
    required this.press,
    required this.color,
    required this.backgroundcolor,
    this.textColor = primaryblackcolor,
    required this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Height =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    //kToolbarHeight;
    final Width = MediaQuery.of(context).size.width;

    return Container(
      height: Height * 0.070,
      margin: margin,
      width: double.infinity,
      child: FlatButton(
        onPressed: () {},
        color: backgroundcolor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(icon,
            color: Colors.white, ),
            const SizedBox(
              width: 10,
            ),
            Text(
              text,
              style: TextStyle(
                  color: color, fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}

class LongRoundedButton extends StatelessWidget {
  final String text;
  final void Function()? press;
  final Color color, textColor, backgroundcolor;
  final EdgeInsets margin;

  const LongRoundedButton({
    Key? key,
    required this.text,
    required this.press,
    required this.color,
    required this.backgroundcolor,
    this.textColor = primaryblackcolor,
    required this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Height =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    //kToolbarHeight;
    final Width = MediaQuery.of(context).size.width;

    return Container(
      height: Height * 0.070,
      margin: margin,
      width: double.infinity,
      child: FlatButton(
        onPressed: press,
        color: backgroundcolor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: color, fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
    );
  }
}

class MediumRoundedButtonwithColor extends StatelessWidget {
  final String text;
  final void Function()? press;
  final Color color, textColor, backgroundcolor;
  final EdgeInsets margin;

  final double width;

  const MediumRoundedButtonwithColor({
    Key? key,
    required this.width,
    required this.text,
    required this.press,
    required this.color,
    required this.backgroundcolor,
    this.textColor = primaryblackcolor,
    required this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Height =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    //kToolbarHeight;
    final Width = MediaQuery.of(context).size.width;

    return Container(
      height: Height * 0.070,
      width: width,
      margin: margin,
      child: FlatButton(
        onPressed: press,
        color: backgroundcolor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
        child: Text(
          text,
          style: TextStyle(
              color: color, fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
    );
  }
}
