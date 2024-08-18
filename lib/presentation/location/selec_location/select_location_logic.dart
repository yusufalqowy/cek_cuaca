import 'package:cekcuaca/data/local/model/my_location.dart';
import 'package:cekcuaca/domain/usecase/weather_usecase.dart';
import 'package:geocoding/geocoding.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class SelectLocationLogic extends GetxController {
  WeatherUsecase usecase;
  var marker = const Marker(markerId: MarkerId("")).obs;

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
        isActive: true,
        createAt: DateTime.now());
  }

  void setMarker(LatLng loc) {
    marker.value = Marker(
        markerId: MarkerId("${loc.latitude},${loc.longitude}"), position: loc);
  }

  Future<void> selectLocation(MyLocation location) async {
    var userLoc = await usecase.getAllUserLocation();
    if (userLoc.length >= 10) {
      return Future.error("Maximum location list is reached");
    } else {
      return await usecase.saveUserLocation(
          location: location.updateActive(false));
    }
  }
}
