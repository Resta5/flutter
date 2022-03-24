import 'package:flutter/material.dart';
import 'package:pkl/menu1_screen.dart';
import 'package:pkl/menu2_screen.dart';
import 'package:pkl/menu_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/img/smk3.jpg"), fit: BoxFit.cover)),
        child: ListView(scrollDirection: Axis.vertical, children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 350,
                    height: 150,
                    margin: EdgeInsets.only(top: 100),
                    decoration: BoxDecoration(),
                    child: Center(
                      child: Text(
                        "Selamat Datang Di Web\nPPDB SMKN 3 Bandung",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context, rootNavigator: false).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) => MenuScreen(),
                        ),
                      );
                    },
                    child: Text("Data"),
                  ),
                  Text(
                    "\nSMKN 3 BANDUNG\n",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "\n\n",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ]),
          ]),
        ]),
      ),
    );
  }
}
