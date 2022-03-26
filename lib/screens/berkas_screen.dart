import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';

import '../controllers/berkas_controller.dart';

class BerkasScreen extends StatelessWidget {
  const BerkasScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final BerkasController berkascontroller =
        Get.put(BerkasController());
    var size, height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: Obx(
        () => berkascontroller.isLoading()
            ? Center(child: const CircularProgressIndicator())
            : Center(
                child: ListView.builder(
                itemCount: berkascontroller.berkasList.length,
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
                            Text("Id Peserta :" +
                                berkascontroller
                                    .berkasList[index].idPeserta
                                    .toString()),
                            Image.network(
                                "http://ppdb1.herokuapp.com/api/berkasPeserta" +
                                    berkascontroller.berkasList[index].ftcpyIjazah
                                        .toString(),
                                fit: BoxFit.fitWidth),
                             Image.network(
                                "http://ppdb1.herokuapp.com/api/berkasPeserta" +
                                    berkascontroller.berkasList[index].ftcpyAkte
                                        .toString(),
                                fit: BoxFit.fitWidth),
                             Image.network(
                                "http://ppdb1.herokuapp.com/api/berkasPeserta" +
                                    berkascontroller.berkasList[index].ftcpyKk
                                        .toString(),
                                fit: BoxFit.fitWidth),
                             Image.network(
                                "http://ppdb1.herokuapp.com/api/berkasPeserta" +
                                    berkascontroller.berkasList[index].ftcpySkhun
                                        .toString(),
                                fit: BoxFit.fitWidth),
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
