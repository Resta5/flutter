import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:pkl/services/berkas_service.dart';

import '../models/berkas_model.dart';

class BerkasController extends GetxController {
  var berkasList = RxList<Data>();
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    fetchBerkasData();
  }

  void fetchBerkasData() async {
    try {
      isLoading(true);
      var berkas = await BerkasService.fetchBerkasData();
      berkasList.value = berkas.data as List<Data>;
      update();
    } finally {
      isLoading(false);
    }
  }
}
