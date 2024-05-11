import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyNavbar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Icon(
          Icons.face_2_sharp,
          size: 24.0,
          color: Colors.blueAccent,
        ),
        Icon(
          Icons.telegram,
          size: 24.0,
          color: Colors.blueAccent,
        ),
        Icon(
          Icons.ac_unit_sharp,
          size: 24.0,
          color: Colors.blueAccent,
        ),
      ],
    );
  }

}