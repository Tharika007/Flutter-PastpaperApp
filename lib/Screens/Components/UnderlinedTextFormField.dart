import 'package:flutter/material.dart';

import '/../constants.dart';

class UnderlinedTextFormField extends StatelessWidget {
  final Function press;
  final Color textColor;
  final EdgeInsets margin;

  const UnderlinedTextFormField({
    Key? key,
    required this.press,
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
      width: 180,
      margin: margin,
      child: TextFormField(
        onTap: press(),
        textAlign: TextAlign.left,
        style: const TextStyle(fontSize: 20),
        cursorColor: Colors.black,
        decoration: const InputDecoration(
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 1)),
          contentPadding: EdgeInsets.all(2),
        ),
      ),
    );
  }
}

class UnderlinedTextFormFieldwithLabel extends StatelessWidget {
  final String label;
  final IconData icon;
  final void Function()? press;
  final Color textColor;
  final EdgeInsets margin;

  const UnderlinedTextFormFieldwithLabel({
    Key? key,
    required this.label,
    required this.icon,
    required this.press,
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
      width: double.infinity,
      child: TextFormField(
        textAlign: TextAlign.left,
        style: const TextStyle(fontSize: 20),
        cursorColor: Colors.black,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: Colors.black,
            size: 19,
          ),
          labelText: label,
          labelStyle: const TextStyle(color: Colors.black),
          enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 2)),
        ),
      ),
    );
  }
}

class UnderlinedTextFormFieldwithIcon extends StatelessWidget {
  final IconData icon;
  final void Function()? press;
  final Color textColor;
  final EdgeInsets margin;

  const UnderlinedTextFormFieldwithIcon({
    Key? key,
    required this.icon,
    required this.press,
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
      width: double.infinity,
      child: TextFormField(
        textAlign: TextAlign.left,
        style: const TextStyle(fontSize: 20),
        cursorColor: Colors.black,
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: Colors.grey,
            size: 22,
          ),
          enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 2)),
        ),
      ),
    );
  }
}

class UnderlinedTextFormFieldwithLabelNoIcon extends StatelessWidget {
  final String label;

  final void Function()? press;
  final Color textColor;
  final EdgeInsets margin;

  const UnderlinedTextFormFieldwithLabelNoIcon({
    Key? key,
    required this.label,
    required this.margin,
    required this.press,
    this.textColor = primaryblackcolor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Height =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    //kToolbarHeight;
    final Width = MediaQuery.of(context).size.width;

    return Container(
      margin: margin,
      width: double.infinity,
      child: TextFormField(
        textAlign: TextAlign.left,
        style: const TextStyle(fontSize: 20),
        cursorColor: Colors.black,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(color: Colors.black),
          enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 2)),
        ),
      ),
    );
  }
}

class LongUnderlinedTextFormField extends StatelessWidget {
  final void Function()? press;
  final Color textColor;
  final EdgeInsets margin;

  const LongUnderlinedTextFormField({
    Key? key,
    required this.press,
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
      width: double.infinity,
      margin: margin,
      child: TextFormField(
        onTap: press,
        textAlign: TextAlign.left,
        style: const TextStyle(fontSize: 20),
        cursorColor: Colors.black,
        decoration: const InputDecoration(
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 1)),
          contentPadding: EdgeInsets.all(2),
        ),
      ),
    );
  }
}