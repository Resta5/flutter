import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';

import '../controllers/dataPeserta_controller.dart';

class DataPesertaScreen extends StatelessWidget {
  const DataPesertaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final DataPesertaController datapesertacontroller =
        Get.put(DataPesertaController());
    var size, height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "Data peserta",
          style: TextStyle(color: Colors.white),
        )),
        backgroundColor: Colors.blueAccent,
      ),
      body: Obx(
        () => datapesertacontroller.isLoading()
            ? Center(child: const CircularProgressIndicator())
            : Center(
                child: ListView.builder(
                itemCount: datapesertacontroller.datapesertaList.length,
                itemBuilder: (content, index) {
                  return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/img/lib.jpg"),
                                  fit: BoxFit.cover)),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                    margin: EdgeInsets.all(15),
                                    child: DataTable(
                                      columns: [
                                        DataColumn(label: Text("Nama")),
                                        DataColumn(
                                            label: Text("No Pendaftaran")),
                                        DataColumn(
                                            label: Text("Tanggal Daftar")),
                                        DataColumn(
                                            label: Text("Jenis Kelamin")),
                                        DataColumn(label: Text("Tempat Lahir")),
                                        DataColumn(
                                            label: Text("Tanggal Lahir")),
                                        DataColumn(label: Text("agama")),
                                        DataColumn(
                                            label: Text("Asal Provinsi")),
                                        DataColumn(label: Text("Asal Kota")),
                                        DataColumn(label: Text("Asal Desa")),
                                        DataColumn(label: Text("Asal Alamat")),
                                        DataColumn(label: Text("Kode Pos")),
                                        DataColumn(label: Text("Jurusan")),
                                        DataColumn(
                                            label: Text("Nama Orang Tua")),
                                        DataColumn(
                                            label: Text("Pekerjaan Orang Tua")),
                                        DataColumn(label: Text("No Hp Ortu")),
                                        DataColumn(
                                            label: Text("Alamat Orang tua")),
                                        DataColumn(label: Text("Email")),
                                      ],
                                      rows: [
                                        DataRow(
                                          cells: [
                                            DataCell(Text(datapesertacontroller
                                                .datapesertaList[index].nama
                                                .toString())),
                                            DataCell(Text(datapesertacontroller
                                                .datapesertaList[index]
                                                .noPendaftaran
                                                .toString())),
                                            DataCell(Text(datapesertacontroller
                                                .datapesertaList[index]
                                                .tglDaftar
                                                .toString())),
                                            DataCell(Text(datapesertacontroller
                                                .datapesertaList[index].jk
                                                .toString())),
                                            DataCell(Text(datapesertacontroller
                                                .datapesertaList[index]
                                                .tempatLahir
                                                .toString())),
                                            DataCell(Text(datapesertacontroller
                                                .datapesertaList[index].tglLahir
                                                .toString())),
                                            DataCell(Text(datapesertacontroller
                                                .datapesertaList[index].agama
                                                .toString())),
                                            DataCell(Text(datapesertacontroller
                                                .datapesertaList[index]
                                                .asalProvinsi
                                                .toString())),
                                            DataCell(Text(datapesertacontroller
                                                .datapesertaList[index]
                                                .asalKabKota
                                                .toString())),
                                            DataCell(Text(datapesertacontroller
                                                .datapesertaList[index]
                                                .asalDesaKelurahan
                                                .toString())),
                                            DataCell(Text(datapesertacontroller
                                                .datapesertaList[index].alamat
                                                .toString())),
                                            DataCell(Text(datapesertacontroller
                                                .datapesertaList[index].kodePos
                                                .toString())),
                                            DataCell(Text(datapesertacontroller
                                                .datapesertaList[index].jurusan
                                                .toString())),
                                            DataCell(Text(datapesertacontroller
                                                .datapesertaList[index].namaOrtu
                                                .toString())),
                                            DataCell(Text(datapesertacontroller
                                                .datapesertaList[index]
                                                .pekerjaanOrtu
                                                .toString())),
                                            DataCell(Text(datapesertacontroller
                                                .datapesertaList[index].noHpOrtu
                                                .toString())),
                                            DataCell(Text(datapesertacontroller
                                                .datapesertaList[index]
                                                .alamatOrtu
                                                .toString())),
                                            DataCell(Text(datapesertacontroller
                                                .datapesertaList[index].email
                                                .toString())),
                                          ],
                                        ),
                                      ],
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.white,
                                      ),
                                    )),
                              ]),
                        ),
                      ],
                    ),
                  );
                },
              )),
      ),
    );
  }
}
