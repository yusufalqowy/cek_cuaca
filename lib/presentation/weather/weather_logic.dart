import 'package:cekcuaca/core/constants.dart';
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
  Rx<Color> backgroundColor = Colors.blueAccent.obs;
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

    timeListener = TimeListener()
      ..listen((time) {
        var dateTime = DateTime.utc(2024, 1, 1, 5);
        var hour = dateTime.hour;
        if (hour >= 5 && hour <= 11) {
          backgroundColor.value = Constants.colorMorning;
        } else if (hour >= 12 && hour <= 15) {
          backgroundColor.value = Constants.colorAfternoon;
        } else if (hour >= 16 && hour <= 20) {
          backgroundColor.value = Constants.colorEvening;
        } else if (hour >= 21 && hour <= 23 || hour < 5) {
          backgroundColor.value = Constants.colorNight;
        }
      });
  }

  @override
  void onClose() {
    super.onClose();
    timeListener?.cancel();
  }
}
