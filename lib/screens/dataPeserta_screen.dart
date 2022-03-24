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
        () => DataPesertaController.isLoading()
            ? Center(child: const CircularProgressIndicator())
            : Center(
                child: ListView.builder(
                itemCount: datapesertacontroller.dataPesertaList.length,
                itemBuilder: (content, index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 400,
                        height: 100,
                        margin: EdgeInsets.only(bottom: 10, top: 10),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.blueAccent, Colors.redAccent]),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(datapesertacontroller
                                .dataPesertaList[index].nama
                                .toString()),
                            Text(datapesertacontroller
                                .dataPesertaList[index].noPendaftaran
                                .toString()),
                            Text(datapesertacontroller
                                .dataPesertaList[index].tgl_daftar
                                .toString()),
                            Text(datapesertacontroller.dataPesertaList[index].jk
                                .toString()),
                            Text(datapesertacontroller
                                .dataPesertaList[index].tempat_lahir
                                .toString()),
                            Text(datapesertacontroller
                                .dataPesertaList[index].tgl_lahir
                                .toString()),
                            Text(datapesertacontroller
                                .dataPesertaList[index].agama
                                .toString()),
                            Text(datapesertacontroller
                                .dataPesertaList[index].asal_provinsi
                                .toString()),
                            Text(datapesertacontroller
                                .dataPesertaList[index].asal_kab_kota
                                .toString()),
                            Text(datapesertacontroller
                                .dataPesertaList[index].asal_desa_kelurahan
                                .toString()),
                            Text(datapesertacontroller
                                .dataPesertaList[index].alamat
                                .toString()),
                            Text(datapesertacontroller
                                .dataPesertaList[index].kode_pos
                                .toString()),
                            Text(datapesertacontroller
                                .dataPesertaList[index].jurusan
                                .toString()),
                            Text(datapesertacontroller
                                .dataPesertaList[index].nama_ortu
                                .toString()),
                            Text(datapesertacontroller
                                .dataPesertaList[index].pekerjaan_ortu
                                .toString()),
                            Text(datapesertacontroller
                                .dataPesertaList[index].no_hp_ortu
                                .toString()),
                            Text(datapesertacontroller
                                .dataPesertaList[index].alamat_ortu
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
