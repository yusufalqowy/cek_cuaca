import 'package:get/get.dart';

import 'select_location_logic.dart';

class SelectLocationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelectLocationLogic(usecase: Get.find()));
  }
}
