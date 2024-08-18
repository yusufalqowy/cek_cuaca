import 'package:cekcuaca/data/local/model/weather_item.dart';

class DailyData {
  DailyData({
    this.cloudBaseAvg,
    this.cloudBaseMax,
    this.cloudBaseMin,
    this.cloudCeilingAvg,
    this.cloudCeilingMax,
    this.cloudCeilingMin,
    this.cloudCoverAvg,
    this.cloudCoverMax,
    this.cloudCoverMin,
    this.dewPointAvg,
    this.dewPointMax,
    this.dewPointMin,
    this.evapotranspirationAvg,
    this.evapotranspirationMax,
    this.evapotranspirationMin,
    this.evapotranspirationSum,
    this.freezingRainIntensityAvg,
    this.freezingRainIntensityMax,
    this.freezingRainIntensityMin,
    this.humidityAvg,
    this.humidityMax,
    this.humidityMin,
    this.iceAccumulationAvg,
    this.iceAccumulationLweAvg,
    this.iceAccumulationLweMax,
    this.iceAccumulationLweMin,
    this.iceAccumulationLweSum,
    this.iceAccumulationMax,
    this.iceAccumulationMin,
    this.iceAccumulationSum,
    this.moonriseTime,
    this.moonsetTime,
    this.precipitationProbabilityAvg,
    this.precipitationProbabilityMax,
    this.precipitationProbabilityMin,
    this.pressureSurfaceLevelAvg,
    this.pressureSurfaceLevelMax,
    this.pressureSurfaceLevelMin,
    this.rainAccumulationAvg,
    this.rainAccumulationLweAvg,
    this.rainAccumulationLweMax,
    this.rainAccumulationLweMin,
    this.rainAccumulationMax,
    this.rainAccumulationMin,
    this.rainAccumulationSum,
    this.rainIntensityAvg,
    this.rainIntensityMax,
    this.rainIntensityMin,
    this.sleetAccumulationAvg,
    this.sleetAccumulationLweAvg,
    this.sleetAccumulationLweMax,
    this.sleetAccumulationLweMin,
    this.sleetAccumulationLweSum,
    this.sleetAccumulationMax,
    this.sleetAccumulationMin,
    this.sleetIntensityAvg,
    this.sleetIntensityMax,
    this.sleetIntensityMin,
    this.snowAccumulationAvg,
    this.snowAccumulationLweAvg,
    this.snowAccumulationLweMax,
    this.snowAccumulationLweMin,
    this.snowAccumulationLweSum,
    this.snowAccumulationMax,
    this.snowAccumulationMin,
    this.snowAccumulationSum,
    this.snowIntensityAvg,
    this.snowIntensityMax,
    this.snowIntensityMin,
    this.sunriseTime,
    this.sunsetTime,
    this.temperatureApparentAvg,
    this.temperatureApparentMax,
    this.temperatureApparentMin,
    this.temperatureAvg,
    this.temperatureMax,
    this.temperatureMin,
    this.uvHealthConcernAvg,
    this.uvHealthConcernMax,
    this.uvHealthConcernMin,
    this.uvIndexAvg,
    this.uvIndexMax,
    this.uvIndexMin,
    this.visibilityAvg,
    this.visibilityMax,
    this.visibilityMin,
    this.weatherCodeMax,
    this.weatherCodeMin,
    this.windDirectionAvg,
    this.windGustAvg,
    this.windGustMax,
    this.windGustMin,
    this.windSpeedAvg,
    this.windSpeedMax,
    this.windSpeedMin,
  });

  WeatherItem toWeatherItem() => WeatherItem(
        cloudBase: cloudBaseAvg?.toDouble(),
        cloudCeiling: cloudCeilingAvg?.toDouble(),
        cloudCover: cloudCoverAvg?.toDouble(),
        dewPoint: dewPointAvg?.toDouble(),
        evapotranspiration: evapotranspirationAvg?.toDouble(),
        freezingRainIntensity: freezingRainIntensityAvg?.toDouble(),
        humidity: humidityAvg?.toDouble(),
        iceAccumulation: iceAccumulationAvg?.toDouble(),
        iceAccumulationLwe: iceAccumulationLweAvg?.toDouble(),
        precipitationProbability: precipitationProbabilityAvg?.toDouble(),
        pressureSurfaceLevel: pressureSurfaceLevelAvg?.toDouble(),
        rainAccumulation: rainAccumulationAvg?.toDouble(),
        rainAccumulationLwe: rainAccumulationLweAvg?.toDouble(),
        rainIntensity: rainIntensityAvg?.toDouble(),
        sleetAccumulation: sleetAccumulationAvg?.toDouble(),
        sleetAccumulationLwe: sleetAccumulationLweAvg?.toDouble(),
        sleetIntensity: sleetIntensityAvg?.toDouble(),
        snowAccumulation: snowAccumulationAvg?.toDouble(),
        snowAccumulationLwe: snowAccumulationLweAvg?.toDouble(),
        snowIntensity: snowIntensityAvg?.toDouble(),
        temperature: temperatureAvg?.toDouble(),
        temperatureApparent: temperatureApparentAvg?.toDouble(),
        uvHealthConcern: uvHealthConcernAvg?.toDouble(),
        uvIndex: uvIndexAvg?.toDouble(),
        visibility: visibilityAvg?.toDouble(),
        weatherCode: weatherCodeMax?.toDouble(),
        windDirection: windDirectionAvg?.toDouble(),
        windGust: windGustAvg?.toDouble(),
        windSpeed: windSpeedAvg?.toDouble(),
      );

  DailyData.fromJson(dynamic json) {
    cloudBaseAvg = json['cloudBaseAvg'];
    cloudBaseMax = json['cloudBaseMax'];
    cloudBaseMin = json['cloudBaseMin'];
    cloudCeilingAvg = json['cloudCeilingAvg'];
    cloudCeilingMax = json['cloudCeilingMax'];
    cloudCeilingMin = json['cloudCeilingMin'];
    cloudCoverAvg = json['cloudCoverAvg'];
    cloudCoverMax = json['cloudCoverMax'];
    cloudCoverMin = json['cloudCoverMin'];
    dewPointAvg = json['dewPointAvg'];
    dewPointMax = json['dewPointMax'];
    dewPointMin = json['dewPointMin'];
    evapotranspirationAvg = json['evapotranspirationAvg'];
    evapotranspirationMax = json['evapotranspirationMax'];
    evapotranspirationMin = json['evapotranspirationMin'];
    evapotranspirationSum = json['evapotranspirationSum'];
    freezingRainIntensityAvg = json['freezingRainIntensityAvg'];
    freezingRainIntensityMax = json['freezingRainIntensityMax'];
    freezingRainIntensityMin = json['freezingRainIntensityMin'];
    humidityAvg = json['humidityAvg'];
    humidityMax = json['humidityMax'];
    humidityMin = json['humidityMin'];
    iceAccumulationAvg = json['iceAccumulationAvg'];
    iceAccumulationLweAvg = json['iceAccumulationLweAvg'];
    iceAccumulationLweMax = json['iceAccumulationLweMax'];
    iceAccumulationLweMin = json['iceAccumulationLweMin'];
    iceAccumulationLweSum = json['iceAccumulationLweSum'];
    iceAccumulationMax = json['iceAccumulationMax'];
    iceAccumulationMin = json['iceAccumulationMin'];
    iceAccumulationSum = json['iceAccumulationSum'];
    moonriseTime = json['moonriseTime'];
    moonsetTime = json['moonsetTime'];
    precipitationProbabilityAvg = json['precipitationProbabilityAvg'];
    precipitationProbabilityMax = json['precipitationProbabilityMax'];
    precipitationProbabilityMin = json['precipitationProbabilityMin'];
    pressureSurfaceLevelAvg = json['pressureSurfaceLevelAvg'];
    pressureSurfaceLevelMax = json['pressureSurfaceLevelMax'];
    pressureSurfaceLevelMin = json['pressureSurfaceLevelMin'];
    rainAccumulationAvg = json['rainAccumulationAvg'];
    rainAccumulationLweAvg = json['rainAccumulationLweAvg'];
    rainAccumulationLweMax = json['rainAccumulationLweMax'];
    rainAccumulationLweMin = json['rainAccumulationLweMin'];
    rainAccumulationMax = json['rainAccumulationMax'];
    rainAccumulationMin = json['rainAccumulationMin'];
    rainAccumulationSum = json['rainAccumulationSum'];
    rainIntensityAvg = json['rainIntensityAvg'];
    rainIntensityMax = json['rainIntensityMax'];
    rainIntensityMin = json['rainIntensityMin'];
    sleetAccumulationAvg = json['sleetAccumulationAvg'];
    sleetAccumulationLweAvg = json['sleetAccumulationLweAvg'];
    sleetAccumulationLweMax = json['sleetAccumulationLweMax'];
    sleetAccumulationLweMin = json['sleetAccumulationLweMin'];
    sleetAccumulationLweSum = json['sleetAccumulationLweSum'];
    sleetAccumulationMax = json['sleetAccumulationMax'];
    sleetAccumulationMin = json['sleetAccumulationMin'];
    sleetIntensityAvg = json['sleetIntensityAvg'];
    sleetIntensityMax = json['sleetIntensityMax'];
    sleetIntensityMin = json['sleetIntensityMin'];
    snowAccumulationAvg = json['snowAccumulationAvg'];
    snowAccumulationLweAvg = json['snowAccumulationLweAvg'];
    snowAccumulationLweMax = json['snowAccumulationLweMax'];
    snowAccumulationLweMin = json['snowAccumulationLweMin'];
    snowAccumulationLweSum = json['snowAccumulationLweSum'];
    snowAccumulationMax = json['snowAccumulationMax'];
    snowAccumulationMin = json['snowAccumulationMin'];
    snowAccumulationSum = json['snowAccumulationSum'];
    snowIntensityAvg = json['snowIntensityAvg'];
    snowIntensityMax = json['snowIntensityMax'];
    snowIntensityMin = json['snowIntensityMin'];
    sunriseTime = json['sunriseTime'];
    sunsetTime = json['sunsetTime'];
    temperatureApparentAvg = json['temperatureApparentAvg'];
    temperatureApparentMax = json['temperatureApparentMax'];
    temperatureApparentMin = json['temperatureApparentMin'];
    temperatureAvg = json['temperatureAvg'];
    temperatureMax = json['temperatureMax'];
    temperatureMin = json['temperatureMin'];
    uvHealthConcernAvg = json['uvHealthConcernAvg'];
    uvHealthConcernMax = json['uvHealthConcernMax'];
    uvHealthConcernMin = json['uvHealthConcernMin'];
    uvIndexAvg = json['uvIndexAvg'];
    uvIndexMax = json['uvIndexMax'];
    uvIndexMin = json['uvIndexMin'];
    visibilityAvg = json['visibilityAvg'];
    visibilityMax = json['visibilityMax'];
    visibilityMin = json['visibilityMin'];
    weatherCodeMax = json['weatherCodeMax'];
    weatherCodeMin = json['weatherCodeMin'];
    windDirectionAvg = json['windDirectionAvg'];
    windGustAvg = json['windGustAvg'];
    windGustMax = json['windGustMax'];
    windGustMin = json['windGustMin'];
    windSpeedAvg = json['windSpeedAvg'];
    windSpeedMax = json['windSpeedMax'];
    windSpeedMin = json['windSpeedMin'];
  }
  num? cloudBaseAvg;
  num? cloudBaseMax;
  num? cloudBaseMin;
  num? cloudCeilingAvg;
  num? cloudCeilingMax;
  num? cloudCeilingMin;
  num? cloudCoverAvg;
  num? cloudCoverMax;
  num? cloudCoverMin;
  num? dewPointAvg;
  num? dewPointMax;
  num? dewPointMin;
  num? evapotranspirationAvg;
  num? evapotranspirationMax;
  num? evapotranspirationMin;
  num? evapotranspirationSum;
  num? freezingRainIntensityAvg;
  num? freezingRainIntensityMax;
  num? freezingRainIntensityMin;
  num? humidityAvg;
  num? humidityMax;
  num? humidityMin;
  num? iceAccumulationAvg;
  num? iceAccumulationLweAvg;
  num? iceAccumulationLweMax;
  num? iceAccumulationLweMin;
  num? iceAccumulationLweSum;
  num? iceAccumulationMax;
  num? iceAccumulationMin;
  num? iceAccumulationSum;
  String? moonriseTime;
  String? moonsetTime;
  num? precipitationProbabilityAvg;
  num? precipitationProbabilityMax;
  num? precipitationProbabilityMin;
  num? pressureSurfaceLevelAvg;
  num? pressureSurfaceLevelMax;
  num? pressureSurfaceLevelMin;
  num? rainAccumulationAvg;
  num? rainAccumulationLweAvg;
  num? rainAccumulationLweMax;
  num? rainAccumulationLweMin;
  num? rainAccumulationMax;
  num? rainAccumulationMin;
  num? rainAccumulationSum;
  num? rainIntensityAvg;
  num? rainIntensityMax;
  num? rainIntensityMin;
  num? sleetAccumulationAvg;
  num? sleetAccumulationLweAvg;
  num? sleetAccumulationLweMax;
  num? sleetAccumulationLweMin;
  num? sleetAccumulationLweSum;
  num? sleetAccumulationMax;
  num? sleetAccumulationMin;
  num? sleetIntensityAvg;
  num? sleetIntensityMax;
  num? sleetIntensityMin;
  num? snowAccumulationAvg;
  num? snowAccumulationLweAvg;
  num? snowAccumulationLweMax;
  num? snowAccumulationLweMin;
  num? snowAccumulationLweSum;
  num? snowAccumulationMax;
  num? snowAccumulationMin;
  num? snowAccumulationSum;
  num? snowIntensityAvg;
  num? snowIntensityMax;
  num? snowIntensityMin;
  String? sunriseTime;
  String? sunsetTime;
  num? temperatureApparentAvg;
  num? temperatureApparentMax;
  num? temperatureApparentMin;
  num? temperatureAvg;
  num? temperatureMax;
  num? temperatureMin;
  num? uvHealthConcernAvg;
  num? uvHealthConcernMax;
  num? uvHealthConcernMin;
  num? uvIndexAvg;
  num? uvIndexMax;
  num? uvIndexMin;
  num? visibilityAvg;
  num? visibilityMax;
  num? visibilityMin;
  num? weatherCodeMax;
  num? weatherCodeMin;
  num? windDirectionAvg;
  num? windGustAvg;
  num? windGustMax;
  num? windGustMin;
  num? windSpeedAvg;
  num? windSpeedMax;
  num? windSpeedMin;
  DailyData copyWith({
    num? cloudBaseAvg,
    num? cloudBaseMax,
    num? cloudBaseMin,
    num? cloudCeilingAvg,
    num? cloudCeilingMax,
    num? cloudCeilingMin,
    num? cloudCoverAvg,
    num? cloudCoverMax,
    num? cloudCoverMin,
    num? dewPointAvg,
    num? dewPointMax,
    num? dewPointMin,
    num? evapotranspirationAvg,
    num? evapotranspirationMax,
    num? evapotranspirationMin,
    num? evapotranspirationSum,
    num? freezingRainIntensityAvg,
    num? freezingRainIntensityMax,
    num? freezingRainIntensityMin,
    num? humidityAvg,
    num? humidityMax,
    num? humidityMin,
    num? iceAccumulationAvg,
    num? iceAccumulationLweAvg,
    num? iceAccumulationLweMax,
    num? iceAccumulationLweMin,
    num? iceAccumulationLweSum,
    num? iceAccumulationMax,
    num? iceAccumulationMin,
    num? iceAccumulationSum,
    String? moonriseTime,
    String? moonsetTime,
    num? precipitationProbabilityAvg,
    num? precipitationProbabilityMax,
    num? precipitationProbabilityMin,
    num? pressureSurfaceLevelAvg,
    num? pressureSurfaceLevelMax,
    num? pressureSurfaceLevelMin,
    num? rainAccumulationAvg,
    num? rainAccumulationLweAvg,
    num? rainAccumulationLweMax,
    num? rainAccumulationLweMin,
    num? rainAccumulationMax,
    num? rainAccumulationMin,
    num? rainAccumulationSum,
    num? rainIntensityAvg,
    num? rainIntensityMax,
    num? rainIntensityMin,
    num? sleetAccumulationAvg,
    num? sleetAccumulationLweAvg,
    num? sleetAccumulationLweMax,
    num? sleetAccumulationLweMin,
    num? sleetAccumulationLweSum,
    num? sleetAccumulationMax,
    num? sleetAccumulationMin,
    num? sleetIntensityAvg,
    num? sleetIntensityMax,
    num? sleetIntensityMin,
    num? snowAccumulationAvg,
    num? snowAccumulationLweAvg,
    num? snowAccumulationLweMax,
    num? snowAccumulationLweMin,
    num? snowAccumulationLweSum,
    num? snowAccumulationMax,
    num? snowAccumulationMin,
    num? snowAccumulationSum,
    num? snowIntensityAvg,
    num? snowIntensityMax,
    num? snowIntensityMin,
    String? sunriseTime,
    String? sunsetTime,
    num? temperatureApparentAvg,
    num? temperatureApparentMax,
    num? temperatureApparentMin,
    num? temperatureAvg,
    num? temperatureMax,
    num? temperatureMin,
    num? uvHealthConcernAvg,
    num? uvHealthConcernMax,
    num? uvHealthConcernMin,
    num? uvIndexAvg,
    num? uvIndexMax,
    num? uvIndexMin,
    num? visibilityAvg,
    num? visibilityMax,
    num? visibilityMin,
    num? weatherCodeMax,
    num? weatherCodeMin,
    num? windDirectionAvg,
    num? windGustAvg,
    num? windGustMax,
    num? windGustMin,
    num? windSpeedAvg,
    num? windSpeedMax,
    num? windSpeedMin,
  }) =>
      DailyData(
        cloudBaseAvg: cloudBaseAvg ?? this.cloudBaseAvg,
        cloudBaseMax: cloudBaseMax ?? this.cloudBaseMax,
        cloudBaseMin: cloudBaseMin ?? this.cloudBaseMin,
        cloudCeilingAvg: cloudCeilingAvg ?? this.cloudCeilingAvg,
        cloudCeilingMax: cloudCeilingMax ?? this.cloudCeilingMax,
        cloudCeilingMin: cloudCeilingMin ?? this.cloudCeilingMin,
        cloudCoverAvg: cloudCoverAvg ?? this.cloudCoverAvg,
        cloudCoverMax: cloudCoverMax ?? this.cloudCoverMax,
        cloudCoverMin: cloudCoverMin ?? this.cloudCoverMin,
        dewPointAvg: dewPointAvg ?? this.dewPointAvg,
        dewPointMax: dewPointMax ?? this.dewPointMax,
        dewPointMin: dewPointMin ?? this.dewPointMin,
        evapotranspirationAvg:
            evapotranspirationAvg ?? this.evapotranspirationAvg,
        evapotranspirationMax:
            evapotranspirationMax ?? this.evapotranspirationMax,
        evapotranspirationMin:
            evapotranspirationMin ?? this.evapotranspirationMin,
        evapotranspirationSum:
            evapotranspirationSum ?? this.evapotranspirationSum,
        freezingRainIntensityAvg:
            freezingRainIntensityAvg ?? this.freezingRainIntensityAvg,
        freezingRainIntensityMax:
            freezingRainIntensityMax ?? this.freezingRainIntensityMax,
        freezingRainIntensityMin:
            freezingRainIntensityMin ?? this.freezingRainIntensityMin,
        humidityAvg: humidityAvg ?? this.humidityAvg,
        humidityMax: humidityMax ?? this.humidityMax,
        humidityMin: humidityMin ?? this.humidityMin,
        iceAccumulationAvg: iceAccumulationAvg ?? this.iceAccumulationAvg,
        iceAccumulationLweAvg:
            iceAccumulationLweAvg ?? this.iceAccumulationLweAvg,
        iceAccumulationLweMax:
            iceAccumulationLweMax ?? this.iceAccumulationLweMax,
        iceAccumulationLweMin:
            iceAccumulationLweMin ?? this.iceAccumulationLweMin,
        iceAccumulationLweSum:
            iceAccumulationLweSum ?? this.iceAccumulationLweSum,
        iceAccumulationMax: iceAccumulationMax ?? this.iceAccumulationMax,
        iceAccumulationMin: iceAccumulationMin ?? this.iceAccumulationMin,
        iceAccumulationSum: iceAccumulationSum ?? this.iceAccumulationSum,
        moonriseTime: moonriseTime ?? this.moonriseTime,
        moonsetTime: moonsetTime ?? this.moonsetTime,
        precipitationProbabilityAvg:
            precipitationProbabilityAvg ?? this.precipitationProbabilityAvg,
        precipitationProbabilityMax:
            precipitationProbabilityMax ?? this.precipitationProbabilityMax,
        precipitationProbabilityMin:
            precipitationProbabilityMin ?? this.precipitationProbabilityMin,
        pressureSurfaceLevelAvg:
            pressureSurfaceLevelAvg ?? this.pressureSurfaceLevelAvg,
        pressureSurfaceLevelMax:
            pressureSurfaceLevelMax ?? this.pressureSurfaceLevelMax,
        pressureSurfaceLevelMin:
            pressureSurfaceLevelMin ?? this.pressureSurfaceLevelMin,
        rainAccumulationAvg: rainAccumulationAvg ?? this.rainAccumulationAvg,
        rainAccumulationLweAvg:
            rainAccumulationLweAvg ?? this.rainAccumulationLweAvg,
        rainAccumulationLweMax:
            rainAccumulationLweMax ?? this.rainAccumulationLweMax,
        rainAccumulationLweMin:
            rainAccumulationLweMin ?? this.rainAccumulationLweMin,
        rainAccumulationMax: rainAccumulationMax ?? this.rainAccumulationMax,
        rainAccumulationMin: rainAccumulationMin ?? this.rainAccumulationMin,
        rainAccumulationSum: rainAccumulationSum ?? this.rainAccumulationSum,
        rainIntensityAvg: rainIntensityAvg ?? this.rainIntensityAvg,
        rainIntensityMax: rainIntensityMax ?? this.rainIntensityMax,
        rainIntensityMin: rainIntensityMin ?? this.rainIntensityMin,
        sleetAccumulationAvg: sleetAccumulationAvg ?? this.sleetAccumulationAvg,
        sleetAccumulationLweAvg:
            sleetAccumulationLweAvg ?? this.sleetAccumulationLweAvg,
        sleetAccumulationLweMax:
            sleetAccumulationLweMax ?? this.sleetAccumulationLweMax,
        sleetAccumulationLweMin:
            sleetAccumulationLweMin ?? this.sleetAccumulationLweMin,
        sleetAccumulationLweSum:
            sleetAccumulationLweSum ?? this.sleetAccumulationLweSum,
        sleetAccumulationMax: sleetAccumulationMax ?? this.sleetAccumulationMax,
        sleetAccumulationMin: sleetAccumulationMin ?? this.sleetAccumulationMin,
        sleetIntensityAvg: sleetIntensityAvg ?? this.sleetIntensityAvg,
        sleetIntensityMax: sleetIntensityMax ?? this.sleetIntensityMax,
        sleetIntensityMin: sleetIntensityMin ?? this.sleetIntensityMin,
        snowAccumulationAvg: snowAccumulationAvg ?? this.snowAccumulationAvg,
        snowAccumulationLweAvg:
            snowAccumulationLweAvg ?? this.snowAccumulationLweAvg,
        snowAccumulationLweMax:
            snowAccumulationLweMax ?? this.snowAccumulationLweMax,
        snowAccumulationLweMin:
            snowAccumulationLweMin ?? this.snowAccumulationLweMin,
        snowAccumulationLweSum:
            snowAccumulationLweSum ?? this.snowAccumulationLweSum,
        snowAccumulationMax: snowAccumulationMax ?? this.snowAccumulationMax,
        snowAccumulationMin: snowAccumulationMin ?? this.snowAccumulationMin,
        snowAccumulationSum: snowAccumulationSum ?? this.snowAccumulationSum,
        snowIntensityAvg: snowIntensityAvg ?? this.snowIntensityAvg,
        snowIntensityMax: snowIntensityMax ?? this.snowIntensityMax,
        snowIntensityMin: snowIntensityMin ?? this.snowIntensityMin,
        sunriseTime: sunriseTime ?? this.sunriseTime,
        sunsetTime: sunsetTime ?? this.sunsetTime,
        temperatureApparentAvg:
            temperatureApparentAvg ?? this.temperatureApparentAvg,
        temperatureApparentMax:
            temperatureApparentMax ?? this.temperatureApparentMax,
        temperatureApparentMin:
            temperatureApparentMin ?? this.temperatureApparentMin,
        temperatureAvg: temperatureAvg ?? this.temperatureAvg,
        temperatureMax: temperatureMax ?? this.temperatureMax,
        temperatureMin: temperatureMin ?? this.temperatureMin,
        uvHealthConcernAvg: uvHealthConcernAvg ?? this.uvHealthConcernAvg,
        uvHealthConcernMax: uvHealthConcernMax ?? this.uvHealthConcernMax,
        uvHealthConcernMin: uvHealthConcernMin ?? this.uvHealthConcernMin,
        uvIndexAvg: uvIndexAvg ?? this.uvIndexAvg,
        uvIndexMax: uvIndexMax ?? this.uvIndexMax,
        uvIndexMin: uvIndexMin ?? this.uvIndexMin,
        visibilityAvg: visibilityAvg ?? this.visibilityAvg,
        visibilityMax: visibilityMax ?? this.visibilityMax,
        visibilityMin: visibilityMin ?? this.visibilityMin,
        weatherCodeMax: weatherCodeMax ?? this.weatherCodeMax,
        weatherCodeMin: weatherCodeMin ?? this.weatherCodeMin,
        windDirectionAvg: windDirectionAvg ?? this.windDirectionAvg,
        windGustAvg: windGustAvg ?? this.windGustAvg,
        windGustMax: windGustMax ?? this.windGustMax,
        windGustMin: windGustMin ?? this.windGustMin,
        windSpeedAvg: windSpeedAvg ?? this.windSpeedAvg,
        windSpeedMax: windSpeedMax ?? this.windSpeedMax,
        windSpeedMin: windSpeedMin ?? this.windSpeedMin,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['cloudBaseAvg'] = cloudBaseAvg;
    map['cloudBaseMax'] = cloudBaseMax;
    map['cloudBaseMin'] = cloudBaseMin;
    map['cloudCeilingAvg'] = cloudCeilingAvg;
    map['cloudCeilingMax'] = cloudCeilingMax;
    map['cloudCeilingMin'] = cloudCeilingMin;
    map['cloudCoverAvg'] = cloudCoverAvg;
    map['cloudCoverMax'] = cloudCoverMax;
    map['cloudCoverMin'] = cloudCoverMin;
    map['dewPointAvg'] = dewPointAvg;
    map['dewPointMax'] = dewPointMax;
    map['dewPointMin'] = dewPointMin;
    map['evapotranspirationAvg'] = evapotranspirationAvg;
    map['evapotranspirationMax'] = evapotranspirationMax;
    map['evapotranspirationMin'] = evapotranspirationMin;
    map['evapotranspirationSum'] = evapotranspirationSum;
    map['freezingRainIntensityAvg'] = freezingRainIntensityAvg;
    map['freezingRainIntensityMax'] = freezingRainIntensityMax;
    map['freezingRainIntensityMin'] = freezingRainIntensityMin;
    map['humidityAvg'] = humidityAvg;
    map['humidityMax'] = humidityMax;
    map['humidityMin'] = humidityMin;
    map['iceAccumulationAvg'] = iceAccumulationAvg;
    map['iceAccumulationLweAvg'] = iceAccumulationLweAvg;
    map['iceAccumulationLweMax'] = iceAccumulationLweMax;
    map['iceAccumulationLweMin'] = iceAccumulationLweMin;
    map['iceAccumulationLweSum'] = iceAccumulationLweSum;
    map['iceAccumulationMax'] = iceAccumulationMax;
    map['iceAccumulationMin'] = iceAccumulationMin;
    map['iceAccumulationSum'] = iceAccumulationSum;
    map['moonriseTime'] = moonriseTime;
    map['moonsetTime'] = moonsetTime;
    map['precipitationProbabilityAvg'] = precipitationProbabilityAvg;
    map['precipitationProbabilityMax'] = precipitationProbabilityMax;
    map['precipitationProbabilityMin'] = precipitationProbabilityMin;
    map['pressureSurfaceLevelAvg'] = pressureSurfaceLevelAvg;
    map['pressureSurfaceLevelMax'] = pressureSurfaceLevelMax;
    map['pressureSurfaceLevelMin'] = pressureSurfaceLevelMin;
    map['rainAccumulationAvg'] = rainAccumulationAvg;
    map['rainAccumulationLweAvg'] = rainAccumulationLweAvg;
    map['rainAccumulationLweMax'] = rainAccumulationLweMax;
    map['rainAccumulationLweMin'] = rainAccumulationLweMin;
    map['rainAccumulationMax'] = rainAccumulationMax;
    map['rainAccumulationMin'] = rainAccumulationMin;
    map['rainAccumulationSum'] = rainAccumulationSum;
    map['rainIntensityAvg'] = rainIntensityAvg;
    map['rainIntensityMax'] = rainIntensityMax;
    map['rainIntensityMin'] = rainIntensityMin;
    map['sleetAccumulationAvg'] = sleetAccumulationAvg;
    map['sleetAccumulationLweAvg'] = sleetAccumulationLweAvg;
    map['sleetAccumulationLweMax'] = sleetAccumulationLweMax;
    map['sleetAccumulationLweMin'] = sleetAccumulationLweMin;
    map['sleetAccumulationLweSum'] = sleetAccumulationLweSum;
    map['sleetAccumulationMax'] = sleetAccumulationMax;
    map['sleetAccumulationMin'] = sleetAccumulationMin;
    map['sleetIntensityAvg'] = sleetIntensityAvg;
    map['sleetIntensityMax'] = sleetIntensityMax;
    map['sleetIntensityMin'] = sleetIntensityMin;
    map['snowAccumulationAvg'] = snowAccumulationAvg;
    map['snowAccumulationLweAvg'] = snowAccumulationLweAvg;
    map['snowAccumulationLweMax'] = snowAccumulationLweMax;
    map['snowAccumulationLweMin'] = snowAccumulationLweMin;
    map['snowAccumulationLweSum'] = snowAccumulationLweSum;
    map['snowAccumulationMax'] = snowAccumulationMax;
    map['snowAccumulationMin'] = snowAccumulationMin;
    map['snowAccumulationSum'] = snowAccumulationSum;
    map['snowIntensityAvg'] = snowIntensityAvg;
    map['snowIntensityMax'] = snowIntensityMax;
    map['snowIntensityMin'] = snowIntensityMin;
    map['sunriseTime'] = sunriseTime;
    map['sunsetTime'] = sunsetTime;
    map['temperatureApparentAvg'] = temperatureApparentAvg;
    map['temperatureApparentMax'] = temperatureApparentMax;
    map['temperatureApparentMin'] = temperatureApparentMin;
    map['temperatureAvg'] = temperatureAvg;
    map['temperatureMax'] = temperatureMax;
    map['temperatureMin'] = temperatureMin;
    map['uvHealthConcernAvg'] = uvHealthConcernAvg;
    map['uvHealthConcernMax'] = uvHealthConcernMax;
    map['uvHealthConcernMin'] = uvHealthConcernMin;
    map['uvIndexAvg'] = uvIndexAvg;
    map['uvIndexMax'] = uvIndexMax;
    map['uvIndexMin'] = uvIndexMin;
    map['visibilityAvg'] = visibilityAvg;
    map['visibilityMax'] = visibilityMax;
    map['visibilityMin'] = visibilityMin;
    map['weatherCodeMax'] = weatherCodeMax;
    map['weatherCodeMin'] = weatherCodeMin;
    map['windDirectionAvg'] = windDirectionAvg;
    map['windGustAvg'] = windGustAvg;
    map['windGustMax'] = windGustMax;
    map['windGustMin'] = windGustMin;
    map['windSpeedAvg'] = windSpeedAvg;
    map['windSpeedMax'] = windSpeedMax;
    map['windSpeedMin'] = windSpeedMin;
    return map;
  }
}
