import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:pkl/services/dataPeserta_service.dart';

import '../models/dataPeserta_model.dart';

class DataPesertaController extends GetxController {
  var datapesertaList = RxList<Data>();
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    fetchDataPesertaData();
  }

  void fetchDataPesertaData() async {
    try {
      isLoading(true);
      var datapeserta = await DataPesertaService.fetchDataPesertaData();
      datapesertaList.value = datapeserta.data as List<Data>;
      update();
    } finally {
      isLoading(false);
    }
  }
}
