import 'package:flutter/material.dart';

class MenuScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/img/batang.png"), fit: BoxFit.cover),
      )),
    );
  }
}
