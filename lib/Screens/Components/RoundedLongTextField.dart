import 'package:flutter/material.dart';

import '/../constants.dart';

class RoundedTextFormField extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  final EdgeInsets margin;

  const RoundedTextFormField({
    Key? key,
    required this.text,
    required this.press,
    this.color = primaryblackcolor,
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
      margin: margin,
      child: TextFormField(
        textAlign: TextAlign.left,
        style: const TextStyle(fontSize: 20),
        cursorColor: Colors.black,
        decoration: InputDecoration(
          hintText: text,
          hintStyle: const TextStyle(fontSize: 20),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(7.0)),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: const Color.fromRGBO(246, 247, 250, 1),
          contentPadding: const EdgeInsets.all(17),
        ),
      ),
    );
  }
}

class PasswordTextField extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  final IconData icon;
  final EdgeInsets margin;

  const PasswordTextField({
    Key? key,
    required this.text,
    required this.press,
    this.color = primaryblackcolor,
    this.textColor = primaryblackcolor,
    required this.icon,
    required this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Height =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    //kToolbarHeight;
    final Width = MediaQuery.of(context).size.width;

    return Container(
      margin: margin,
      child: TextFormField(
        textAlign: TextAlign.left,
        style: const TextStyle(fontSize: 20),
        cursorColor: Colors.black,
        obscureText: true,
        obscuringCharacter: "*",
        decoration: InputDecoration(
          hintText: text,
          hintStyle: const TextStyle(fontSize: 20),
          suffixIcon: Icon(
            icon,
            color: primaryblackcolor,
            size: 25,
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(7.0)),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: const Color.fromRGBO(246, 247, 250, 1),
          contentPadding: const EdgeInsets.all(17),
        ),
      ),
    );
  }
}

class UnderlinedPasswordTextField extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  final IconData icon;
  final EdgeInsets margin;

  const UnderlinedPasswordTextField({
    Key? key,
    required this.text,
    required this.press,
    this.color = primaryblackcolor,
    this.textColor = primaryblackcolor,
    required this.icon,
    required this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Height =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    //kToolbarHeight;
    final Width = MediaQuery.of(context).size.width;

    return Container(
      margin: margin,
      child: TextFormField(
        textAlign: TextAlign.left,
        style: const TextStyle(fontSize: 20),
        cursorColor: Colors.black,
        obscureText: true,
        obscuringCharacter: "*",
        decoration: InputDecoration(
          label: Text(text),
          labelStyle: const TextStyle(fontSize: 20, color: Colors.black),
          suffixIcon: Icon(
            icon,
            color: primaryblackcolor,
            size: 25,
          ),
          border: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 3),
          ),
        ),
      ),
    );
  }
}
