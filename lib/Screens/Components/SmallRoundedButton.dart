import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '/../constants.dart';

class SmallRoundedButton extends StatelessWidget {
  final String text;
  final void Function()? press;
  final Color textColor;
  final EdgeInsets margin;

  const SmallRoundedButton({
    Key? key,
    required this.text,
    this.press,
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
      width: 170,
      child: FlatButton(
        onPressed: press,
        textColor: textColor,
        shape: RoundedRectangleBorder(
            side: const BorderSide(
                color: Colors.grey, width: 2, style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(8)),
        child: Text(
          text,
          style: TextStyle(
              color: textColor, fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
    );
  }
}

class SmallRoundedButtonwithColor extends StatelessWidget {
  final String labeltext;
  final IconData icon;
  final void Function()? onPressed;
  final Color backgroudColor;
  final EdgeInsets margin;

  const SmallRoundedButtonwithColor({
    Key? key,
    required this.labeltext,
    required this.icon,
    required this.onPressed,
    required this.backgroudColor,
    required this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Height =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    //kToolbarHeight;
    final Width = MediaQuery.of(context).size.width;

    return Container(
      height: Height * 0.090,
      margin: margin,
      width: 180,
      child: TextButton(
        style: TextButton.styleFrom(
          primary: Colors.white,
          textStyle: const TextStyle(fontSize: 20, color: Colors.white),
          backgroundColor: backgroudColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7),
          ),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.white,
              size: 21,
            ),
            const SizedBox(width: 7),
            Text(
              labeltext,
              style: const TextStyle(fontSize: 20, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

class SmallRoundedButtonWithIcon extends StatelessWidget {
  final String labeltext;
  final void Function()? onPressed;
  final Color textColor;
  final EdgeInsets margin;
  final IconData icon;

  const SmallRoundedButtonWithIcon({
    Key? key,
    required this.labeltext,
    required this.icon,
    this.onPressed,
    this.textColor = primaryblackcolor,
    required this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Height =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    //kToolbarHeight;
    final Width = MediaQuery.of(context).size.width;

    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        height: Height * 0.080,
        margin: margin,
        width: 160,
        child: TextButton(
          style: TextButton.styleFrom(
            primary: Colors.white,
            textStyle: TextStyle(fontSize: 20, color: Colors.white),
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                  color: Colors.black, width: 2, style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(7),
            ),
          ),
          onPressed: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                labeltext,
                style: const TextStyle(fontSize: 20, color: Colors.black),
              ),
              const SizedBox(width: 7),
              Icon(
                icon,
                color: Colors.black,
                size: 21,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PaperCardButton extends StatelessWidget {
  final String labeltext;
  final void Function()? onPressed;
  final Color background, textcolor;

  const PaperCardButton({
    Key? key,
    required this.labeltext,
    required this.textcolor,
    required this.background,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: onPressed,
      color: background,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Text(
        labeltext,
        style: TextStyle(
            color: textcolor, fontSize: 14.0, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class SmallRoundedButtonwithColorNoIcon extends StatelessWidget {
  final String labeltext;
  final void Function()? onPressed;
  final Color textColor;
  final EdgeInsets margin;

  const SmallRoundedButtonwithColorNoIcon({
    Key? key,
    required this.labeltext,
    this.onPressed,
    this.textColor = primaryblackcolor,
    required this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Height =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    //kToolbarHeight;
    final Width = MediaQuery.of(context).size.width;

    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        height: Height * 0.070,
        margin: margin,
        width: 150,
        child: TextButton(
          style: TextButton.styleFrom(
            primary: Colors.white,
            textStyle: const TextStyle(fontSize: 20, color: Colors.white),
            backgroundColor: HexColor("#EC5F5F"),
            shape: RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(7),
            ),
          ),
          onPressed: onPressed,
          child: Text(
            labeltext,
            style: const TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class buttonwithonlyicon extends StatelessWidget {
  final void Function()? onPressed;

  const buttonwithonlyicon({
    Key? key,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: primarycolor,
      onPressed: onPressed,
      child: Icon(
        Icons.menu,
        color: HexColor("#EC5F5F"),
        size: 30,
      ),
    );
  }
}
