import 'package:cekcuaca/core/network_response.dart';
import 'package:cekcuaca/core/routes.dart';
import 'package:cekcuaca/core/utils.dart';
import 'package:cekcuaca/data/local/model/my_location.dart';
import 'package:cekcuaca/data/local/model/weather_data.dart';
import 'package:cekcuaca/domain/usecase/weather_usecase.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:time_listener/time_listener.dart';

class WeatherLogic extends GetxController {
  WeatherUsecase usecase;
  var getWeatherForecastResponse = NetworkResponse.init<WeatherData>().obs;
  Rx<int> backgroundColorInt = Colors.blueAccent.value.obs;
  TimeListener? timeListener;
  MyLocation? location;

  WeatherLogic({required this.usecase});

  Future<void> getWeatherForecast({
    MyLocation? loc,
    bool isRefresh = false,
  }) async {
    if (loc != null) {
      location = loc;
    }
    getWeatherForecastResponse.value = NetworkResponse.loading();
    if (isRefresh) {
      await usecase.deleteWeatherForecastDb();
    }
    var response = await usecase.getWeatherForecastApi(
        location: location!.updateActive(true));
    getWeatherForecastResponse.value = response;
  }

  Stream<List<MyLocation>> getMyLocation() => usecase.getUserLocation();

  Future<bool> deleteLocation(MyLocation loc) async {
    return await usecase.deleteUserLocation(location: loc);
  }

  @override
  void onInit() async {
    super.onInit();
    var location = await usecase.getActiveUserLocation();
    if (location != null) {
      getWeatherForecast(loc: location);
    } else {
      var permission = await Geolocator.checkPermission();
      if (permission.isGranted()) {
        var location = await usecase.getAndSaveCurrentLocation();
        getWeatherForecast(loc: location);
      } else {
        Get.offAllNamed(Routes.onboarding);
      }
    }

    var now = DateTime.now();
    backgroundColorInt.value = getBackgroundColor(now).value;

    timeListener = TimeListener()
      ..listen((dateTime) {
        backgroundColorInt.value = getBackgroundColor(dateTime).value;
      });
  }

  @override
  void onClose() {
    super.onClose();
    timeListener?.cancel();
  }
}
