import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.lightBlueAccent,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text(
                'Profile',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              margin: EdgeInsets.all(16),
            ),
            Positioned(
              right: 250.0,
              top: 70.0,
              child: Container(
                height: 180,
                width: 150,
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/img/profile.jpg'),
                        fit: BoxFit.cover),
                    gradient:
                        LinearGradient(colors: [Colors.white, Colors.white]),
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
            Positioned(
              right: 80.0,
              top: 130.0,
              child: Text(
                "Muhamad Resta Ramadhan \nXII RPL 3 \nSMK ASSALAAM",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
