import 'package:flutter/material.dart';
import 'package:pkl/menu1_screen.dart';
import 'package:pkl/menu2_screen.dart';
import 'package:pkl/menu3_screen.dart';
import 'package:pkl/data_peserta.dart';
import 'package:pkl/screens/dataPeserta_screen.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.count(
      padding: const EdgeInsets.all(25),
      crossAxisCount: 2,
      children: <Widget>[
        Card(
          margin: const EdgeInsets.all(9),
          child: InkWell(
            onTap: () {
              Navigator.of(context, rootNavigator: false).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => DataPesertaScreen(),
                ),
              );
            },
            splashColor: Colors.blue,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const <Widget>[
                  Icon(
                    Icons.add_chart_sharp,
                    size: 70,
                    color: Color.fromARGB(255, 57, 136, 135),
                  ),
                  Text("Data Peserta", style: TextStyle(fontSize: 17.0)),
                ],
              ),
            ),
          ),
        ),
        Card(
          margin: const EdgeInsets.all(9),
          child: InkWell(
            onTap: () {
              Navigator.of(context, rootNavigator: false).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => DataPeserta(),
                ),
              );
            },
            splashColor: Colors.blue,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const <Widget>[
                  Icon(
                    Icons.add_chart_sharp,
                    size: 70,
                    color: Color.fromARGB(255, 57, 136, 135),
                  ),
                  Text("Berkas Peserta", style: TextStyle(fontSize: 17.0)),
                ],
              ),
            ),
          ),
        )
      ],
    ));
  }
}
