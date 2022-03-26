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
      body: Obx(
        () => datapesertacontroller.isLoading()
            ? Center(child: const CircularProgressIndicator())
            : Center(
                child: ListView.builder(
                itemCount: datapesertacontroller.datapesertaList.length,
                itemBuilder: (content, index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 400,
                        height: 500,
                        margin: EdgeInsets.only(bottom: 10, top: 10),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.blueAccent, Colors.blueAccent]),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("nama :" +
                                datapesertacontroller
                                    .datapesertaList[index].nama
                                    .toString()),
                            Text("No Pendaftaran :" +
                                datapesertacontroller
                                    .datapesertaList[index].noPendaftaran
                                    .toString()),
                            Text("Tanggal Daftar :" +
                                datapesertacontroller
                                    .datapesertaList[index].tglDaftar
                                    .toString()),
                            Text("Jenis Kelamin :" +
                                datapesertacontroller.datapesertaList[index].jk
                                    .toString()),
                            Text("Tempat Lahir :" +
                                datapesertacontroller
                                    .datapesertaList[index].tempatLahir
                                    .toString()),
                            Text("Tanggal Lahir :" +
                                datapesertacontroller
                                    .datapesertaList[index].tglLahir
                                    .toString()),
                            Text("Agama :" +
                                datapesertacontroller
                                    .datapesertaList[index].agama
                                    .toString()),
                            Text("Asal Provinsi :" +
                                datapesertacontroller
                                    .datapesertaList[index].asalProvinsi
                                    .toString()),
                            Text("Asal Kota :" +
                                datapesertacontroller
                                    .datapesertaList[index].asalKabKota
                                    .toString()),
                            Text("Asal Desa :" +
                                datapesertacontroller
                                    .datapesertaList[index].asalDesaKelurahan
                                    .toString()),
                            Text("Alamat :" +
                                datapesertacontroller
                                    .datapesertaList[index].alamat
                                    .toString()),
                            Text("Kode Pos :" +
                                datapesertacontroller
                                    .datapesertaList[index].kodePos
                                    .toString()),
                            Text("Jurusan :" +
                                datapesertacontroller
                                    .datapesertaList[index].jurusan
                                    .toString()),
                            Text("Nama Ortu :" +
                                datapesertacontroller
                                    .datapesertaList[index].namaOrtu
                                    .toString()),
                            Text("Pekerjaan Orang Tua :" +
                                datapesertacontroller
                                    .datapesertaList[index].pekerjaanOrtu
                                    .toString()),
                            Text("Nomor Hp Orang Tua :" +
                                datapesertacontroller
                                    .datapesertaList[index].noHpOrtu
                                    .toString()),
                            Text("Alamat Orang Tua :" +
                                datapesertacontroller
                                    .datapesertaList[index].alamatOrtu
                                    .toString()),
                            Text("Email :" +
                                datapesertacontroller
                                    .datapesertaList[index].email
                                    .toString()),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              )),
      ),
    );
  }
}
