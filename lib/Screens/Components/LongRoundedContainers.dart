import 'package:flutter/material.dart';

import '/../constants.dart';

//Long Rounded
class LongRoundContainer extends StatelessWidget {
  final String text;
  final Function press;
  final Color textColor;
  final IconData icon;

  const LongRoundContainer({
    required this.text,
    required this.press,
    this.textColor = primaryblackcolor,
    required this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40.0),
          topRight: Radius.circular(40.0),
        ),
      ),
    );
  }
}
