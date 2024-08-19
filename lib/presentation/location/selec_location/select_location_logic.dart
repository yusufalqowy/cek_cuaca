import 'dart:async';

import 'package:cekcuaca/data/local/model/my_location.dart';
import 'package:cekcuaca/domain/usecase/weather_usecase.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class SelectLocationLogic extends GetxController {
  WeatherUsecase usecase;
  var currentLocation = const LatLng(-6.293961014781403, 106.79378405651377);
  var marker = const Marker(
    markerId: MarkerId(""),
  ).obs;
  var gController = Completer<GoogleMapController>();

  SelectLocationLogic({required this.usecase});

  Future<MyLocation> getLocation(LatLng loc) async {
    var mark = await placemarkFromCoordinates(loc.latitude, loc.longitude);
    var placeMark = mark.first;
    return MyLocation(
        lat: loc.latitude,
        lon: loc.longitude,
        name: placeMark.locality,
        address:
            "${placeMark.subAdministrativeArea}, ${placeMark.administrativeArea}, ${placeMark.country}",
        createAt: DateTime.now());
  }

  void setMarker(LatLng loc) {
    marker.value = Marker(
        markerId: MarkerId("${loc.latitude},${loc.longitude}"), position: loc);
  }

  Future<void> addLocation(MyLocation location) async {
    var userLoc = await usecase.getAllUserLocation();
    if (userLoc.length >= 10) {
      return Future.error("Maximum location list is reached");
    } else {
      return await usecase.addLocation(location: location);
    }
  }

  Future<void> moveCamera(LatLng loc) async {
    var controller = await gController.future;
    await controller.animateCamera(
        CameraUpdate.newCameraPosition(CameraPosition(target: loc, zoom: 10)));
  }

  @override
  void onInit() async {
    super.onInit();
    var loc = await Geolocator.getCurrentPosition();
    currentLocation = LatLng(loc.latitude, loc.longitude);
    await moveCamera(currentLocation);
  }
}
