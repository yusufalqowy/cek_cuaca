import 'package:cekcuaca/core/dio_client.dart';
import 'package:cekcuaca/core/network_response.dart';
import 'package:cekcuaca/data/remote/model/weather_response.dart';

abstract class WeatherApi {
  Future<NetworkResponse<WeatherResponse>> getWeatherForecast({
    required double lat,
    required double lon,
  });
}

class WeatherApiImpl extends WeatherApi {
  DioClient client;
  WeatherApiImpl({required this.client});

  @override
  Future<NetworkResponse<WeatherResponse>> getWeatherForecast(
      {required double lat, required double lon}) async {
    try {
      var param = {
        "location": "$lat $lon",
        "timesteps": "1d",
      };
      var response = await client.get("weather/forecast?timesteps=1h",
          queryParameters: param);
      if (response.statusCode == 200) {
        if (response.data != null) {
          return NetworkResponse.success(
              WeatherResponse.fromJson(response.data));
        } else {
          return NetworkResponse.error(message: response.statusMessage);
        }
      } else {
        return NetworkResponse.error(message: response.statusMessage);
      }
    } catch (e) {
      return NetworkResponse.error(message: e.toString());
    }
  }
}
