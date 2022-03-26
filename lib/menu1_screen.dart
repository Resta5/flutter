import 'package:flutter/material.dart';

class MenuScreen1 extends StatelessWidget {
  get color => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tentang")),
      body: ListView(
        children: [
          Column(
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
                'SMK Negeri 3 Bandung merupakan Sekolah Menengah Kejuruan Negeri terbaik yang berada di Kota Bandung, Jawa Barat, Indonesia. Berlokasi di Jalan Solontongan No. 10 RT 03 RW 06, Kelurahan Turangga, Kecamatan Lengkong, Kota Bandung 40264. Center of Excellence atau Pusat Keunggulan SMK adalah program pengembangan SMK agar mengalami peningkatan kualitas dan kinerja, yang diperkuat melalui kemitraan dan penyelarasan dengan Dunia Usaha, Dunia Industri dan Dunia Kerja atau (DUDIKA), serta menjadi SMK rujukan dan pusat peningkatan kualitas dan kinerja SMK lainnya. Melalui pendekatan multiple treatment yang diterapkan dalam program Center of Excellence yang diberikan oleh direktorat SMK ini, SMKN 3 Bandung kemudian mengimplementasikan program ini ke dalam sebuah konsep pengembangan sekolah sebagai Digipreneur Ecosystem Learning and Training Academy yang disingkat sebagai konsep DELTA 3.',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
