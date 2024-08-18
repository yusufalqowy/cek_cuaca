import 'package:get/get.dart';

import 'location_logic.dart';

class LocationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LocationLogic());
  }
}
