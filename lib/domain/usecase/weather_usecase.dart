import 'package:cekcuaca/core/network_response.dart';
import 'package:cekcuaca/data/local/model/my_location.dart';
import 'package:cekcuaca/data/local/model/weather_data.dart';
import 'package:cekcuaca/domain/repository/weather_repository.dart';
import 'package:isar/isar.dart';

abstract class WeatherUsecase extends WeatherRepository {}

class WeatherUsecaseImpl extends WeatherUsecase {
  WeatherRepository repository;

  WeatherUsecaseImpl({required this.repository});

  @override
  Future<void> deleteAllUserLocation() async {
    return await repository.deleteAllUserLocation();
  }

  @override
  Future<bool> deleteUserLocationById({required Id id}) async {
    return await repository.deleteUserLocationById(id: id);
  }

  @override
  Future<bool> deleteUserLocation({required MyLocation location}) async {
    return await repository.deleteUserLocation(location: location);
  }

  @override
  Stream<List<MyLocation>> getUserLocation() {
    return repository.getUserLocation();
  }

  @override
  Future<WeatherData?> getWeatherForecastDb() async {
    return await repository.getWeatherForecastDb();
  }

  @override
  Future<void> addLocation({required MyLocation location}) async {
    return await repository.addLocation(location: location);
  }

  @override
  Future<NetworkResponse<WeatherData>> getWeatherForecastApi(
      {required MyLocation location}) async {
    return await repository.getWeatherForecastApi(location: location);
  }

  @override
  Future<bool> requestLocationPermission() async {
    return await repository.requestLocationPermission();
  }

  @override
  Future<MyLocation?> getActiveUserLocation() async {
    return await repository.getActiveUserLocation();
  }

  @override
  Future<MyLocation> getAndSaveCurrentLocation() async {
    return await repository.getAndSaveCurrentLocation();
  }

  @override
  Future<void> deleteWeatherForecastDb() async {
    return await repository.deleteWeatherForecastDb();
  }

  @override
  Future<List<MyLocation>> getAllUserLocation() async {
    return await repository.getAllUserLocation();
  }
}
