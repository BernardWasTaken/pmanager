import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
      margin: const EdgeInsets.only(bottom: 30),
      alignment: Alignment.bottomCenter,
      child: MyNavbar(),
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
    return const MaterialApp(
      home: Scaffold(
          backgroundColor: Color.fromRGBO(22, 30, 48, 1),
          body: Center(
            child: Cell(),
          )),
    );
  }
}
