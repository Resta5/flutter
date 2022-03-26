import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/dataPeserta_model.dart';

class DataPesertaService {
  static Future<DataPesertaModel> fetchDataPesertaData() async {
    final response = await http
        .get(Uri.parse('https://ppdb1.herokuapp.com/api/dataPeserta'));

    if (response.statusCode == 200) {
      var data = response.body;
      return DataPesertaModel.fromJson(jsonDecode(data));
    } else {
      throw Exception();
    }
  }
}