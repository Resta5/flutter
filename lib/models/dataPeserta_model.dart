class DataPesertaModel {
  bool? success;
  String? message;
  List<Data>? data;

  DataPesertaModel(
    {required this.success, required this.message, required this.data});

  DataPesertaModel.fromJson(Map<String, dynamic> json) {
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
  String? nama;
  int? noPendaftaran;
  String? tglDaftar;
  String? jk;
  String? tempatLahir;
  String? tglLahir;
  String? agama;
  String? asalProvinsi;
  String? asalKabKota;
  String? asalDesaKelurahan;
  String? alamat;
  int? kodePos;
  String? jurusan;
  String? namaOrtu;
  String? pekerjaanOrtu;
  int? noHpOrtu;
  String? alamatOrtu;
  String? email;

  Data(
      {this.nama,
      this.noPendaftaran,
      this.tglDaftar,
      this.jk,
      this.tempatLahir,
      this.tglLahir,
      this.agama,
      this.asalProvinsi,
      this.asalKabKota,
      this.asalDesaKelurahan,
      this.alamat,
      this.kodePos,
      this.jurusan,
      this.namaOrtu,
      this.pekerjaanOrtu,
      this.noHpOrtu,
      this.alamatOrtu,
      this.email});

  Data.fromJson(Map<String, dynamic> json) {
    nama = json['nama'];
    noPendaftaran = json['no_pendaftaran'];
    tglDaftar = json['tgl_daftar'];
    jk = json['jk'];
    tempatLahir = json['tempat_lahir'];
    tglLahir = json['tgl_lahir'];
    agama = json['agama'];
    asalProvinsi = json['asal_provinsi'];
    asalKabKota = json['asal_kab_kota'];
    asalDesaKelurahan = json['asal_desa_kelurahan'];
    alamat = json['alamat'];
    kodePos = json['kode_pos'];
    jurusan = json['jurusan'];
    namaOrtu = json['nama_ortu'];
    pekerjaanOrtu = json['pekerjaan_ortu'];
    noHpOrtu = json['no_hp_ortu'];
    alamatOrtu = json['alamat_ortu'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nama'] = this.nama;
    data['no_pendaftaran'] = this.noPendaftaran;
    data['tgl_daftar'] = this.tglDaftar;
    data['jk'] = this.jk;
    data['tempat_lahir'] = this.tempatLahir;
    data['tgl_lahir'] = this.tglLahir;
    data['agama'] = this.agama;
    data['asal_provinsi'] = this.asalProvinsi;
    data['asal_kab_kota'] = this.asalKabKota;
    data['asal_desa_kelurahan'] = this.asalDesaKelurahan;
    data['alamat'] = this.alamat;
    data['kode_pos'] = this.kodePos;
    data['jurusan'] = this.jurusan;
    data['nama_ortu'] = this.namaOrtu;
    data['pekerjaan_ortu'] = this.pekerjaanOrtu;
    data['no_hp_ortu'] = this.noHpOrtu;
    data['alamat_ortu'] = this.alamatOrtu;
    data['email'] = this.email;
    return data;
  }
}