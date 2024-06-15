


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pmanager/resources.dart';

class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      body: Center(
        child: LoginLightContainer(MediaQuery.of(context).size.width * 0.803, MediaQuery.of(context).size.height * 0.584),
      ),
    );
    throw UnimplementedError();
  }

}