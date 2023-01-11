import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../constants.dart';

class SmallDropDown extends StatelessWidget {
  final String hintText, labeltext;
  final Function onChanged;
  final Color textColor;
  final EdgeInsets margin;
  final List<String> items;

  const SmallDropDown({
    Key? key,
    required this.items,
    required this.labeltext,
    required this.hintText,
    required this.onChanged,
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
      width: 160,
      child: DropdownButtonFormField(
        decoration: InputDecoration(
          labelText: labeltext,
          labelStyle: const TextStyle(
              color: Colors.black, fontSize: 21, fontWeight: FontWeight.bold),
          contentPadding: const EdgeInsets.all(1),
        ),
        dropdownColor: Colors.white,
        icon: const Icon(Icons.arrow_drop_down, color: Colors.black),
        iconSize: 35,
        style: const TextStyle(color: Colors.black, fontSize: 16),
        hint: Text(hintText),
        items: items.map((String value) {
          return DropdownMenuItem<String>(
            
            value: value,
            child: Text(
              value,
              style: const TextStyle(color: Colors.black, fontSize: 17),
            ),
          );
        }).toList(),
        onChanged: onChanged() ,
      ),
    );
  }
}
