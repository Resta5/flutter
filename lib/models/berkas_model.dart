class BerkasModel {
  bool? success;
  String? message;
  List<Data>? data;

  BerkasModel({this.success, this.message, this.data});

  BerkasModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? idPeserta;
  String? ftcpyIjazah;
  String? ftcpyAkte;
  String? ftcpyKk;
  String? ftcpySkhun;

  Data(
      {this.idPeserta,
      this.ftcpyIjazah,
      this.ftcpyAkte,
      this.ftcpyKk,
      this.ftcpySkhun});

  Data.fromJson(Map<String, dynamic> json) {
    idPeserta = json['id_peserta'];
    ftcpyIjazah = json['ftcpy_ijazah'];
    ftcpyAkte = json['ftcpy_akte'];
    ftcpyKk = json['ftcpy_kk'];
    ftcpySkhun = json['ftcpy_skhun'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id_peserta'] = this.idPeserta;
    data['ftcpy_ijazah'] = this.ftcpyIjazah;
    data['ftcpy_akte'] = this.ftcpyAkte;
    data['ftcpy_kk'] = this.ftcpyKk;
    data['ftcpy_skhun'] = this.ftcpySkhun;
    return data;
  }
}