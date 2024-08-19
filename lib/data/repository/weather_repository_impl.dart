import 'package:cekcuaca/core/network_response.dart';
import 'package:cekcuaca/core/utils.dart';
import 'package:cekcuaca/data/local/model/my_location.dart';
import 'package:cekcuaca/data/local/model/weather_data.dart';
import 'package:cekcuaca/data/remote/weather_api.dart';
import 'package:cekcuaca/domain/repository/weather_repository.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:isar/isar.dart';

class WeatherRepositoryImpl extends WeatherRepository {
  WeatherApi api;
  Isar db;

  WeatherRepositoryImpl({required this.api, required this.db});

  @override
  Future<void> deleteAllUserLocation() async {
    return await db.writeTxn(() async {
      await db.myLocations.clear();
    });
  }

  @override
  Future<bool> deleteUserLocationById({required Id id}) async {
    return await db.myLocations.delete(id);
  }

  @override
  Future<bool> deleteUserLocation({required MyLocation location}) async {
    return await db.writeTxn(() async {
      var loc =
          await db.myLocations.filter().nameEqualTo(location.name).findFirst();
      if (loc != null && !loc.isActive) {
        return await db.myLocations.delete(loc.id!);
      } else {
        return false;
      }
    });
  }

  @override
  Stream<List<MyLocation>> getUserLocation() {
    return db.myLocations
        .filter()
        .idIsNotNull()
        .build()
        .watch(fireImmediately: true);
  }

  @override
  Future<WeatherData?> getWeatherForecastDb() async {
    return await db.weatherDatas.get(1);
  }

  @override
  Future<void> addLocation({required MyLocation location}) async {
    await db.writeTxn(() async {
      var current =
          await db.myLocations.filter().nameEqualTo(location.name).findFirst();
      if (current == null) {
        await db.myLocations.put(location.updateActive(false));
      } else {
        await db.myLocations.put(current);
      }
    });
  }

  @override
  Future<NetworkResponse<WeatherData>> getWeatherForecastApi(
      {required MyLocation location}) async {
    await setActiveLocation(location: location);
    var data = await db.weatherDatas.get(1);
    if (data != null) {
      return NetworkResponse.success(data);
    } else {
      var response = await api
          .getWeatherForecast(lat: location.lat ?? 0, lon: location.lon ?? 0)
          .then(
            (v) => NetworkResponse(
              status: v.status,
              message: v.message,
              data: v.data?.toWeatherData(),
            ),
          );
      if (response.status?.isSuccess == true && response.data != null) {
        await db.writeTxn(() async {
          var newData = response.data!;
          newData.id = 1;
          newData.location.value = location;
          await db.weatherDatas.put(newData);
          await newData.location.save();
        });
      }
      return response;
    }
  }

  @override
  Future<MyLocation?> getActiveUserLocation() async {
    return await db.myLocations
        .filter()
        .isActiveEqualTo(true)
        .build()
        .findFirst();
  }

  @override
  Future<bool> requestLocationPermission() async {
    var serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    var permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error(LocationPermission.denied,
            StackTrace.fromString("Location permissions are denied"));
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          LocationPermission.deniedForever,
          StackTrace.fromString(
              "Location permissions are permanently denied, we cannot request permissions."));
    }

    return permission.isGranted();
  }

  @override
  Future<MyLocation> getAndSaveCurrentLocation() async {
    var loc = await Geolocator.getCurrentPosition();
    var mark = await placemarkFromCoordinates(loc.latitude, loc.longitude);
    var placeMark = mark.first;
    var location = MyLocation(
        lat: loc.latitude,
        lon: loc.longitude,
        name: placeMark.locality,
        address:
            "${placeMark.subAdministrativeArea}, ${placeMark.administrativeArea}, ${placeMark.country}",
        isActive: true,
        createAt: DateTime.now());
    await addLocation(location: location);
    return location;
  }

  @override
  Future<void> deleteWeatherForecastDb() async {
    return await db.writeTxn(() async {
      await db.weatherDatas.clear();
    });
  }

  @override
  Future<List<MyLocation>> getAllUserLocation() async {
    return await db.myLocations.where().findAll();
  }

  Future<void> setActiveLocation({required MyLocation location}) async {
    await db.writeTxn(() async {
      var activeLoc =
          await db.myLocations.filter().isActiveEqualTo(true).build().findAll();

      for (var item in activeLoc) {
        if (item != location) {
          await db.myLocations.put(item.updateActive(false));
        }
      }
      var current =
          await db.myLocations.filter().nameEqualTo(location.name).findFirst();
      if (current == null) {
        await db.myLocations.put(location.updateActive(true));
      } else {
        await db.myLocations.put(current.updateActive(true));
      }
    });
  }
}
