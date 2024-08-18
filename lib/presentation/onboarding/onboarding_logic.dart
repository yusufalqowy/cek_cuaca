import 'package:cekcuaca/core/routes.dart';
import 'package:cekcuaca/core/utils.dart';
import 'package:cekcuaca/domain/usecase/weather_usecase.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';

class OnboardingLogic extends GetxController with WidgetsBindingObserver {
  WeatherUsecase usecase;
  var showLoading = false.obs;

  OnboardingLogic({required this.usecase});

  Future<void> getUserLocation() async {
    showLoading.value = true;
    await usecase.getAndSaveCurrentLocation();
    showLoading.value = false;
    Get.offAllNamed(Routes.weather);
  }

  Future<bool> requestLocationPermission() async {
    return await usecase.requestLocationPermission();
  }

  @override
  void onInit() {
    super.onInit();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void onClose() {
    super.onClose();
    WidgetsBinding.instance.removeObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) async {
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.resumed) {
      var permission = await Geolocator.checkPermission();
      if (permission.isGranted()) {
        getUserLocation();
      }
    }
  }
}
