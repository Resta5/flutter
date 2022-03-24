import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:pkl/models/dataPeserta_model.dart';

class DataPesertaController extends GetxController {
  dataPeserta? datapeserta;
  var isDataLoading = false.obs;

  get dataPesertaList => null;
  getKategori() async {
    try {
      http.Response response = await http
          .get(Uri.parse('https://ppdb1.herokuapp.com/api/dataPeserta'));

      if (response.statusCode == 200) {
        var result = jsonDecode(response.body);

        datapeserta = dataPeserta.fromJson(result);
      } else {}
    } catch (e) {
      print("error get data");
    } finally {
      isDataLoading(false);
    }
  }

  static isLoading() {}
}