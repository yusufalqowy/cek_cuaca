import 'package:cekcuaca/core/routes.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';

class SplashLogic extends GetxController {
  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(seconds: 3), () async {
      var permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        Get.offAllNamed(Routes.onboarding);
      } else {
        Get.offAllNamed(Routes.weather);
      }
    });
  }
}
