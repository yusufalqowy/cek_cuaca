import 'package:cekcuaca/core/constants.dart';
import 'package:cekcuaca/core/weather_code.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:geolocator/geolocator.dart';
import 'package:intl/intl.dart';

extension DrawerSliderExt on SliderDrawerState {
  void showOrHide() {
    if (isDrawerOpen) {
      closeSlider();
    } else {
      openSlider();
    }
  }
}

extension LocationPermissionExt on LocationPermission {
  bool isGranted() =>
      this == LocationPermission.always ||
      this == LocationPermission.whileInUse;
}

extension DateTimeExt on DateTime {
  bool get isToday {
    final now = DateTime.now();
    return now.day == day && now.month == month && now.year == year;
  }

  bool get isTomorrow {
    final tomorrow = DateTime.now().add(const Duration(days: 1));
    return tomorrow.day == day &&
        tomorrow.month == month &&
        tomorrow.year == year;
  }

  bool get isYesterday {
    final yesterday = DateTime.now().subtract(const Duration(days: 1));
    return yesterday.day == day &&
        yesterday.month == month &&
        yesterday.year == year;
  }

  String toStringFormat(String format) {
    final DateFormat formatter = DateFormat(format);
    return formatter.format(this);
  }
}

WeatherCode getFromCode(double code) {
  var weather = WeatherCode.unknown;
  switch (code) {
    case 1000:
      weather = WeatherCode.sunny;
    case 1100:
      weather = WeatherCode.clear;
    case 1101:
      weather = WeatherCode.partlyCloudy;
    case 1102:
      weather = WeatherCode.mostCloudy;
    case 1001:
      weather = WeatherCode.cloudy;
    case 2100:
      weather = WeatherCode.lightFog;
    case 2000:
      weather = WeatherCode.fog;
    case 4000:
      weather = WeatherCode.drizzle;
    case 4001:
      weather = WeatherCode.rain;
    case 4200:
      weather = WeatherCode.lightRain;
    case 4201:
      weather = WeatherCode.heavyRain;
    case 5000:
      weather = WeatherCode.snow;
    case 5001:
      weather = WeatherCode.flurries;
    case 5100:
      weather = WeatherCode.lightSnow;
    case 5101:
      weather = WeatherCode.heavySnow;
    case 6000:
      weather = WeatherCode.freezingDrizzle;
    case 6001:
      weather = WeatherCode.freezingRain;
    case 6200:
      weather = WeatherCode.lightFreezingRain;
    case 6201:
      weather = WeatherCode.heavyFreezingRain;
    case 7000:
      weather = WeatherCode.icePellets;
    case 7101:
      weather = WeatherCode.heavyIcePellets;
    case 7102:
      weather = WeatherCode.lightIcePellets;
    case 8000:
      weather = WeatherCode.thunder;
    default:
      weather = WeatherCode.unknown;
  }

  return weather;
}

Color getBackgroundColor(DateTime date) {
  var hour = date.hour;
  if (hour >= 5 && hour <= 11) {
    return Constants.colorMorning;
  } else if (hour >= 12 && hour <= 15) {
    return Constants.colorAfternoon;
  } else if (hour >= 16 && hour <= 20) {
    return Constants.colorEvening;
  } else if (hour >= 21 && hour <= 23 || hour < 5) {
    return Constants.colorNight;
  } else {
    return Colors.blueAccent;
  }
}
