import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pmanager/login.dart';
import '../resources.dart';

class Cell extends StatefulWidget {
  const Cell({super.key});

  @override
  State<Cell> createState() => _CellState();
}

class _CellState extends State<Cell> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30, top: 30, left: 30, right: 30),
      alignment: Alignment.center,
      child: LightContainer(MediaQuery.of(context).size.width, MediaQuery.of(context).size.height * 0.584),
    );
  }
}

void buttonPressed() {
  if (kDebugMode) {
    print("dela");
  }
}

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: primary,
          body: Center(
            child: LoginPage(),
          )),
    );
  }
}
