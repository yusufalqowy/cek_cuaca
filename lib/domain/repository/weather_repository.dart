import 'package:cekcuaca/core/network_response.dart';
import 'package:cekcuaca/data/local/model/my_location.dart';
import 'package:cekcuaca/data/local/model/weather_data.dart';
import 'package:isar/isar.dart';

abstract class WeatherRepository {
  Future<NetworkResponse<WeatherData>> getWeatherForecastApi(
      {required MyLocation location});
  Future<WeatherData?> getWeatherForecastDb();
  Future<void> deleteWeatherForecastDb();
  Future<void> addLocation({required MyLocation location});
  Stream<List<MyLocation>> getUserLocation();
  Future<List<MyLocation>> getAllUserLocation();
  Future<MyLocation?> getActiveUserLocation();
  Future<bool> deleteUserLocationById({required Id id});
  Future<bool> deleteUserLocation({required MyLocation location});
  Future<void> deleteAllUserLocation();
  Future<bool> requestLocationPermission();
  Future<MyLocation> getAndSaveCurrentLocation();
}
