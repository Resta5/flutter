import 'package:flutter/material.dart';

class MenuScreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("About")),
      body: Container(
        color: Colors.blueAccent,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text(
                '\nSMKN 3 BANDUNG\n',
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),
              margin: EdgeInsets.all(16),
            ),
            Text(
              'Sedang Mencari Sekolah Yang Seru?\n\nSMKN 3 BANDUNG aja,kamu bisa\nmemilih jurusan sesuai passion dengan\npilihan jurusan super komplit.',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
