import 'package:beklenen_yasam_suresi/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyGenderColumn extends StatelessWidget {
  IconData icon;
  String text;


  MyGenderColumn({this.icon = FontAwesomeIcons.bridgeLock, this.text = ":)"});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.black54,
          size: 48,
        ),
        SizedBox(
          height: 9,
        ),
        Text(
          text,
          style: kMetin,
        ),
      ],
    );
  }
}