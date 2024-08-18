import 'package:cekcuaca/data/local/model/weather_item.dart';

class HourlyData {
  HourlyData({
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

  WeatherItem toWeatherItem() => WeatherItem(
        cloudBase: cloudBase?.toDouble(),
        cloudCeiling: cloudCeiling?.toDouble(),
        cloudCover: cloudCover?.toDouble(),
        dewPoint: dewPoint?.toDouble(),
        evapotranspiration: evapotranspiration?.toDouble(),
        freezingRainIntensity: freezingRainIntensity?.toDouble(),
        humidity: humidity?.toDouble(),
        iceAccumulation: iceAccumulation?.toDouble(),
        iceAccumulationLwe: iceAccumulationLwe?.toDouble(),
        precipitationProbability: precipitationProbability?.toDouble(),
        pressureSurfaceLevel: pressureSurfaceLevel?.toDouble(),
        rainAccumulation: rainAccumulation?.toDouble(),
        rainAccumulationLwe: rainAccumulationLwe?.toDouble(),
        rainIntensity: rainIntensity?.toDouble(),
        sleetAccumulation: sleetAccumulation?.toDouble(),
        sleetAccumulationLwe: sleetAccumulationLwe?.toDouble(),
        sleetIntensity: sleetIntensity?.toDouble(),
        snowAccumulation: snowAccumulation?.toDouble(),
        snowAccumulationLwe: snowAccumulationLwe?.toDouble(),
        snowIntensity: snowIntensity?.toDouble(),
        temperature: temperature?.toDouble(),
        temperatureApparent: temperatureApparent?.toDouble(),
        uvHealthConcern: uvHealthConcern?.toDouble(),
        uvIndex: uvIndex?.toDouble(),
        visibility: visibility?.toDouble(),
        weatherCode: weatherCode?.toDouble(),
        windDirection: windDirection?.toDouble(),
        windGust: windGust?.toDouble(),
        windSpeed: windSpeed?.toDouble(),
      );

  HourlyData.fromJson(dynamic json) {
    cloudBase = json['cloudBase'];
    cloudCeiling = json['cloudCeiling'];
    cloudCover = json['cloudCover'];
    dewPoint = json['dewPoint'];
    evapotranspiration = json['evapotranspiration'];
    freezingRainIntensity = json['freezingRainIntensity'];
    humidity = json['humidity'];
    iceAccumulation = json['iceAccumulation'];
    iceAccumulationLwe = json['iceAccumulationLwe'];
    precipitationProbability = json['precipitationProbability'];
    pressureSurfaceLevel = json['pressureSurfaceLevel'];
    rainAccumulation = json['rainAccumulation'];
    rainAccumulationLwe = json['rainAccumulationLwe'];
    rainIntensity = json['rainIntensity'];
    sleetAccumulation = json['sleetAccumulation'];
    sleetAccumulationLwe = json['sleetAccumulationLwe'];
    sleetIntensity = json['sleetIntensity'];
    snowAccumulation = json['snowAccumulation'];
    snowAccumulationLwe = json['snowAccumulationLwe'];
    snowIntensity = json['snowIntensity'];
    temperature = json['temperature'];
    temperatureApparent = json['temperatureApparent'];
    uvHealthConcern = json['uvHealthConcern'];
    uvIndex = json['uvIndex'];
    visibility = json['visibility'];
    weatherCode = json['weatherCode'];
    windDirection = json['windDirection'];
    windGust = json['windGust'];
    windSpeed = json['windSpeed'];
  }
  num? cloudBase;
  num? cloudCeiling;
  num? cloudCover;
  num? dewPoint;
  num? evapotranspiration;
  num? freezingRainIntensity;
  num? humidity;
  num? iceAccumulation;
  num? iceAccumulationLwe;
  num? precipitationProbability;
  num? pressureSurfaceLevel;
  num? rainAccumulation;
  num? rainAccumulationLwe;
  num? rainIntensity;
  num? sleetAccumulation;
  num? sleetAccumulationLwe;
  num? sleetIntensity;
  num? snowAccumulation;
  num? snowAccumulationLwe;
  num? snowIntensity;
  num? temperature;
  num? temperatureApparent;
  num? uvHealthConcern;
  num? uvIndex;
  num? visibility;
  num? weatherCode;
  num? windDirection;
  num? windGust;
  num? windSpeed;
  HourlyData copyWith({
    num? cloudBase,
    num? cloudCeiling,
    num? cloudCover,
    num? dewPoint,
    num? evapotranspiration,
    num? freezingRainIntensity,
    num? humidity,
    num? iceAccumulation,
    num? iceAccumulationLwe,
    num? precipitationProbability,
    num? pressureSurfaceLevel,
    num? rainAccumulation,
    num? rainAccumulationLwe,
    num? rainIntensity,
    num? sleetAccumulation,
    num? sleetAccumulationLwe,
    num? sleetIntensity,
    num? snowAccumulation,
    num? snowAccumulationLwe,
    num? snowIntensity,
    num? temperature,
    num? temperatureApparent,
    num? uvHealthConcern,
    num? uvIndex,
    num? visibility,
    num? weatherCode,
    num? windDirection,
    num? windGust,
    num? windSpeed,
  }) =>
      HourlyData(
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
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['cloudBase'] = cloudBase;
    map['cloudCeiling'] = cloudCeiling;
    map['cloudCover'] = cloudCover;
    map['dewPoint'] = dewPoint;
    map['evapotranspiration'] = evapotranspiration;
    map['freezingRainIntensity'] = freezingRainIntensity;
    map['humidity'] = humidity;
    map['iceAccumulation'] = iceAccumulation;
    map['iceAccumulationLwe'] = iceAccumulationLwe;
    map['precipitationProbability'] = precipitationProbability;
    map['pressureSurfaceLevel'] = pressureSurfaceLevel;
    map['rainAccumulation'] = rainAccumulation;
    map['rainAccumulationLwe'] = rainAccumulationLwe;
    map['rainIntensity'] = rainIntensity;
    map['sleetAccumulation'] = sleetAccumulation;
    map['sleetAccumulationLwe'] = sleetAccumulationLwe;
    map['sleetIntensity'] = sleetIntensity;
    map['snowAccumulation'] = snowAccumulation;
    map['snowAccumulationLwe'] = snowAccumulationLwe;
    map['snowIntensity'] = snowIntensity;
    map['temperature'] = temperature;
    map['temperatureApparent'] = temperatureApparent;
    map['uvHealthConcern'] = uvHealthConcern;
    map['uvIndex'] = uvIndex;
    map['visibility'] = visibility;
    map['weatherCode'] = weatherCode;
    map['windDirection'] = windDirection;
    map['windGust'] = windGust;
    map['windSpeed'] = windSpeed;
    return map;
  }
}
