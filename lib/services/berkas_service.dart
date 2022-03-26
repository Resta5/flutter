import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/berkas_model.dart';

class BerkasService {
  static Future<BerkasModel> fetchBerkasData() async {
    final response = await http
        .get(Uri.parse('http://ppdb1.herokuapp.com/api/berkasPeserta'));

    if (response.statusCode == 200) {
      var data = response.body;
      return BerkasModel.fromJson(jsonDecode(data));
    } else {
      throw Exception();
    }
  }
}