
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

const primary = Color(0xff161e30);
const primaryDimmed = Color(0xff2D3250);
const secondary = Color(0xfff9b17a);
const textColor = Color(0xffffffff);
const primaryLight = Color(0xff424769);

class MyNavbar extends StatelessWidget{
  const MyNavbar({super.key});

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

class LightContainer extends StatelessWidget{
  double width = 0;
  double height = 0;

  LightContainer(this.width, this.height, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: primaryDimmed,
      ),
      width: width,
      height: height,
    );
  }

}

class LoginTextField extends StatelessWidget{
  double width = 0;
  double height = 0;
  double? ml = 0;
  double? mr = 0;
  double? mt = 0;
  double? mb = 0;

  LoginTextField(this.width, this.height, this.ml, this.mr, this.mt, this.mb, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: EdgeInsets.only(left: ml!, right: mr!, top: mt!, bottom: mb!),
      decoration: const BoxDecoration(
        color: primaryLight,
        border: Border(left: BorderSide(color: secondary, width: 3)),
      ),
    );
    throw UnimplementedError();
  }

}

class LoginLightContainer extends StatelessWidget{
  double width = 0;
  double height = 0;

  LoginLightContainer(this.width, this.height, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: primaryDimmed,
      ),
      width: width,
      height: height,
      child: Column(

        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            Container(
              margin: const EdgeInsets.only(bottom: 15, top: 15, left: 15, right: 0),
              child: const Text("Log into ", style: TextStyle(color: textColor, fontSize: 29),),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 15, top: 15, left: 0, right: 15),
              child: const Text("pManager", style: TextStyle(color: secondary, fontSize: 29),),
            )
          ],),
          Column(
            children: <Widget>[
              LoginTextField(MediaQuery.of(context).size.width * 0.708, MediaQuery.of(context).size.height * 0.08, 0, 0, 0, 15),
              LoginTextField(MediaQuery.of(context).size.width * 0.708, MediaQuery.of(context).size.height * 0.08, 0, 0, 15, 0),
            ]
          )

        ],
      ),
    );
  }

}

