import 'package:flutter/material.dart';
import '../../constants.dart';

class Logo extends StatelessWidget {
  final String text;
  final Color color, textColor;
  final EdgeInsets margin;

  const Logo({
    Key? key,
    required this.text,
    this.color = primaryblackcolor,
    this.textColor = primaryblackcolor,
    required this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _Height = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        kToolbarHeight;

    final _Width = MediaQuery.of(context).size.width;

    return Container(
      margin: margin,
      height: _Height * 0.1,
      width: double.infinity,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 30,
          color: primaryblackcolor,
        ),
      ),
    );
  }
}

class MainTopic extends StatelessWidget {
  final String text;
  final Color textColor;
  final EdgeInsets margin;

  const MainTopic({
    Key? key,
    required this.text,
    this.textColor = primaryblackcolor,
    required this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _Height =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    //kToolbarHeight;

    final _Width = MediaQuery.of(context).size.width;

    return Container(
      height: _Height * 0.1,
      width: double.infinity,
      margin: margin,
      child: FittedBox(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 30,
            color: primaryblackcolor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class subText extends StatelessWidget {
  final String text;
  final Color textColor;
  final EdgeInsets margin;

  const subText({
    Key? key,
    required this.text,
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
      height: Height * 0.1,
      width: 300,
      margin: margin,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 17,
          color: primaryblackcolor,
        ),
      ),
    );
  }
}

class SubjectTopic extends StatelessWidget {
  final String maintext;
  final String subtext;
  final EdgeInsets margin;

  const SubjectTopic({
    Key? key,
    required this.maintext,
    required this.subtext,
    required this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: margin,
      child: Row(
        children: [
          Text(
            maintext,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: primaryblackcolor,
            ),
          ),
          Text(
            subtext,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 20,
              color: primaryblackcolor,
            ),
          ),
        ],
      ),
    );
  }
}

class UserName extends StatelessWidget {
  final String text;

  const UserName({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.left,
      style: const TextStyle(
        fontSize: 20,
        color: primaryblackcolor,
        fontWeight: FontWeight.bold,
        
      ),
    );
  }
}

class SubSubjectTopic extends StatelessWidget {
  final String maintext;

  const SubSubjectTopic({
    Key? key,
    required this.maintext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Text(
        maintext,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: primaryblackcolor,
          
        ),
      ),
    );
  }
}

class subText2 extends StatelessWidget {
  final String text;
  final Color textColor;
  final EdgeInsets margin;

  const subText2({
    Key? key,
    required this.text,
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
      height: Height * 0.1,
      width: 210,
      margin: margin,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
        fontWeight: FontWeight.bold,
          fontSize: 17,
          color: primaryblackcolor,
        ),
      ),
    );
  }
}

