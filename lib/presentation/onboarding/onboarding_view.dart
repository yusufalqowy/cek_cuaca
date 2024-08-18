import 'package:cekcuaca/presentation/onboarding/onboarding_logic.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';

class OnboardingView extends GetView<OnboardingLogic> {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.location_on_rounded,
                  size: 48,
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  "We need access your location, please accept the location permission",
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 16,
                ),
                FilledButton.icon(
                  onPressed: () async {
                    await controller.requestLocationPermission().then((v) {
                      if (v) {
                        controller.getUserLocation();
                      }
                    }, onError: (e, s) {
                      Get.snackbar("Error", s.toString(),
                          duration: const Duration(seconds: 5),
                          snackPosition: SnackPosition.BOTTOM,
                          mainButton: e == LocationPermission.deniedForever
                              ? TextButton(
                                  onPressed: () async {
                                    Get.back(closeOverlays: true);
                                    await Geolocator.openAppSettings();
                                  },
                                  child: const Text("Open Setting"))
                              : null);
                    });
                  },
                  label: const Text("Request Permission"),
                  icon: const Icon(Icons.my_location),
                ),
              ],
            ),
            Obx(() {
              return Visibility(
                  visible: controller.showLoading.value,
                  child: SizedBox(
                    width: double.infinity,
                    height: double.maxFinite,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Theme.of(context).colorScheme.surface),
                          child: const Center(
                            child: CircularProgressIndicator(),
                          ),
                        )
                      ],
                    ),
                  ));
            })
          ],
        ),
      ),
    );
  }
}
