import 'package:cekcuaca/core/assets.dart';

enum WeatherCode {
  unknown(0, "Unknown", null),
  sunny(1000, "Clear, Sunny", Assets.lottieSunny),
  clear(1100, "Mostly Clear", Assets.lottieSunny),
  partlyCloudy(1101, "Partly Cloudy", Assets.lottieCloudy),
  mostCloudy(1102, "Mostly Cloudy", Assets.lottieCloudy),
  cloudy(1001, "Cloudy", Assets.lottieCloudy),
  fog(2000, "Fog", Assets.lottieWindy),
  lightFog(2100, "Light Fog", Assets.lottieWindy),
  drizzle(4000, "Drizzle", Assets.lottieWindy),
  rain(4001, "Rain", Assets.lottieRain),
  lightRain(4200, "Light Rain", Assets.lottieRain),
  heavyRain(4201, "Heavy Rain", Assets.lottieRain),
  snow(5000, "Snow", null),
  flurries(5001, "Flurries", null),
  lightSnow(5100, "Light Snow", null),
  heavySnow(5101, "Heavy Snow", null),
  freezingDrizzle(6000, "Freezing Drizzle", null),
  freezingRain(6001, "Freezing Rain", null),
  lightFreezingRain(6200, "Light Freezing Rain", null),
  heavyFreezingRain(6201, "Heavy Freezing Rain", null),
  icePellets(7000, "Ice Pellets", null),
  heavyIcePellets(7101, "Heavy Ice Pellets", null),
  lightIcePellets(7102, "Light Ice Pellets", null),
  thunder(8000, "Thunderstorm", Assets.lottieThunderstrom);

  final double code;
  final String weather;
  final String? asset;
  const WeatherCode(this.code, this.weather, this.asset);
}
