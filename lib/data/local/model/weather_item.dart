import 'package:cekcuaca/core/utils.dart';
import 'package:cekcuaca/core/weather_code.dart';
import 'package:isar/isar.dart';

part 'weather_item.g.dart';

@embedded
class WeatherItem {
  String? time;
  double? cloudBase;
  double? cloudCeiling;
  double? cloudCover;
  double? dewPoint;
  double? evapotranspiration;
  double? freezingRainIntensity;
  double? humidity;
  double? iceAccumulation;
  double? iceAccumulationLwe;
  double? precipitationProbability;
  double? pressureSurfaceLevel;
  double? rainAccumulation;
  double? rainAccumulationLwe;
  double? rainIntensity;
  double? sleetAccumulation;
  double? sleetAccumulationLwe;
  double? sleetIntensity;
  double? snowAccumulation;
  double? snowAccumulationLwe;
  double? snowIntensity;
  double? temperature;
  double? temperatureApparent;
  double? uvHealthConcern;
  double? uvIndex;
  double? visibility;
  double? weatherCode;
  double? windDirection;
  double? windGust;
  double? windSpeed;
  WeatherItem({
    this.time,
    this.cloudBase,
    this.cloudCeiling,
    this.cloudCover,
    this.dewPoint,
    this.evapotranspiration,
    this.freezingRainIntensity,
    this.humidity,
    this.iceAccumulation,
    this.iceAccumulationLwe,
    this.precipitationProbability,
    this.pressureSurfaceLevel,
    this.rainAccumulation,
    this.rainAccumulationLwe,
    this.rainIntensity,
    this.sleetAccumulation,
    this.sleetAccumulationLwe,
    this.sleetIntensity,
    this.snowAccumulation,
    this.snowAccumulationLwe,
    this.snowIntensity,
    this.temperature,
    this.temperatureApparent,
    this.uvHealthConcern,
    this.uvIndex,
    this.visibility,
    this.weatherCode,
    this.windDirection,
    this.windGust,
    this.windSpeed,
  });

  WeatherItem copyWith({
    String? time,
    double? cloudBase,
    double? cloudCeiling,
    double? cloudCover,
    double? dewPoint,
    double? evapotranspiration,
    double? freezingRainIntensity,
    double? humidity,
    double? iceAccumulation,
    double? iceAccumulationLwe,
    double? precipitationProbability,
    double? pressureSurfaceLevel,
    double? rainAccumulation,
    double? rainAccumulationLwe,
    double? rainIntensity,
    double? sleetAccumulation,
    double? sleetAccumulationLwe,
    double? sleetIntensity,
    double? snowAccumulation,
    double? snowAccumulationLwe,
    double? snowIntensity,
    double? temperature,
    double? temperatureApparent,
    double? uvHealthConcern,
    double? uvIndex,
    double? visibility,
    double? weatherCode,
    double? windDirection,
    double? windGust,
    double? windSpeed,
  }) =>
      WeatherItem(
        time: time ?? this.time,
        cloudBase: cloudBase ?? this.cloudBase,
        cloudCeiling: cloudCeiling ?? this.cloudCeiling,
        cloudCover: cloudCover ?? this.cloudCover,
        dewPoint: dewPoint ?? this.dewPoint,
        evapotranspiration: evapotranspiration ?? this.evapotranspiration,
        freezingRainIntensity:
            freezingRainIntensity ?? this.freezingRainIntensity,
        humidity: humidity ?? this.humidity,
        iceAccumulation: iceAccumulation ?? this.iceAccumulation,
        iceAccumulationLwe: iceAccumulationLwe ?? this.iceAccumulationLwe,
        precipitationProbability:
            precipitationProbability ?? this.precipitationProbability,
        pressureSurfaceLevel: pressureSurfaceLevel ?? this.pressureSurfaceLevel,
        rainAccumulation: rainAccumulation ?? this.rainAccumulation,
        rainAccumulationLwe: rainAccumulationLwe ?? this.rainAccumulationLwe,
        rainIntensity: rainIntensity ?? this.rainIntensity,
        sleetAccumulation: sleetAccumulation ?? this.sleetAccumulation,
        sleetAccumulationLwe: sleetAccumulationLwe ?? this.sleetAccumulationLwe,
        sleetIntensity: sleetIntensity ?? this.sleetIntensity,
        snowAccumulation: snowAccumulation ?? this.snowAccumulation,
        snowAccumulationLwe: snowAccumulationLwe ?? this.snowAccumulationLwe,
        snowIntensity: snowIntensity ?? this.snowIntensity,
        temperature: temperature ?? this.temperature,
        temperatureApparent: temperatureApparent ?? this.temperatureApparent,
        uvHealthConcern: uvHealthConcern ?? this.uvHealthConcern,
        uvIndex: uvIndex ?? this.uvIndex,
        visibility: visibility ?? this.visibility,
        weatherCode: weatherCode ?? this.weatherCode,
        windDirection: windDirection ?? this.windDirection,
        windGust: windGust ?? this.windGust,
        windSpeed: windSpeed ?? this.windSpeed,
      );

  @ignore
  String get hourFormat {
    return DateTime.tryParse(time ?? "")?.toStringFormat("HH:mm") ?? "";
  }

  @ignore
  String get dayFormat {
    return DateTime.tryParse(time ?? "")?.toStringFormat("EEEE") ?? "";
  }

  @ignore
  String get dateFormat {
    return DateTime.tryParse(time ?? "")?.toStringFormat("MMMM dd") ?? "";
  }

  @ignore
  WeatherCode get weatherEnum {
    return getFromCode(weatherCode ?? 0);
  }
}
