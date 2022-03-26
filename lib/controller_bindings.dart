import 'package:get/instance_manager.dart';

import 'controllers/album_controller.dart';
import 'controllers/user_controller.dart';
import 'controllers/dataPeserta_controller.dart';

class ControllerBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<UserController>(UserController());
  }
}