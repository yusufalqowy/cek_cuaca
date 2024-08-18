import 'package:cekcuaca/data/local/model/weather_data.dart';
import 'package:cekcuaca/data/local/model/weather_item.dart';
import 'package:cekcuaca/data/remote/model/DailyData.dart';
import 'package:cekcuaca/data/remote/model/HourlyData.dart';

class WeatherResponse {
  Timelines? timelines;
  LocationDto? location;

  WeatherResponse({
    this.timelines,
    this.location,
  });

  WeatherData toWeatherData() => WeatherData(
        hourly: timelines?.hourly
            ?.map((e) => e.toWeatherItem() ?? WeatherItem())
            .toList(),
        daily: timelines?.daily
            ?.map((e) => e.toWeatherItem() ?? WeatherItem())
            .toList(),
      );

  WeatherResponse.fromJson(dynamic json) {
    timelines = json['timelines'] != null
        ? Timelines.fromJson(json['timelines'])
        : null;
    location = json['location'] != null
        ? LocationDto.fromJson(json['location'])
        : null;
  }

  WeatherResponse copyWith({
    Timelines? timelines,
    LocationDto? location,
  }) =>
      WeatherResponse(
        timelines: timelines ?? this.timelines,
        location: location ?? this.location,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (timelines != null) {
      map['timelines'] = timelines?.toJson();
    }
    if (location != null) {
      map['location'] = location?.toJson();
    }
    return map;
  }
}

class LocationDto {
  LocationDto({
    this.lat,
    this.lon,
  });

  LocationDto.fromJson(dynamic json) {
    lat = json['lat'];
    lon = json['lon'];
  }

  num? lat;
  num? lon;

  LocationDto copyWith({
    num? lat,
    num? lon,
  }) =>
      LocationDto(
        lat: lat ?? this.lat,
        lon: lon ?? this.lon,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['lat'] = lat;
    map['lon'] = lon;
    return map;
  }
}

class Timelines {
  List<HourlyItem>? hourly;
  List<DailyItem>? daily;

  Timelines({
    this.hourly,
    this.daily,
  });

  Timelines.fromJson(dynamic json) {
    if (json['hourly'] != null) {
      hourly = [];
      json['hourly'].forEach((v) {
        hourly?.add(HourlyItem.fromJson(v));
      });
    }
    if (json['daily'] != null) {
      daily = [];
      json['daily'].forEach((v) {
        daily?.add(DailyItem.fromJson(v));
      });
    }
  }

  Timelines copyWith({
    List<HourlyItem>? hourly,
    List<DailyItem>? daily,
  }) =>
      Timelines(
        hourly: hourly ?? this.hourly,
        daily: daily ?? this.daily,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (hourly != null) {
      map['hourly'] = hourly?.map((v) => v.toJson()).toList();
    }
    if (daily != null) {
      map['daily'] = daily?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class HourlyItem {
  String? time;
  HourlyData? values;

  HourlyItem({
    this.time,
    this.values,
  });

  WeatherItem? toWeatherItem() => values?.toWeatherItem().copyWith(time: time);

  HourlyItem.fromJson(dynamic json) {
    time = json['time'];
    values =
        json['values'] != null ? HourlyData.fromJson(json['values']) : null;
  }

  HourlyItem copyWith({
    String? time,
    HourlyData? values,
  }) =>
      HourlyItem(
        time: time ?? this.time,
        values: values ?? this.values,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['time'] = time;
    if (values != null) {
      map['values'] = values?.toJson();
    }
    return map;
  }
}

class DailyItem {
  String? time;
  DailyData? values;

  DailyItem({
    this.time,
    this.values,
  });

  WeatherItem? toWeatherItem() => values?.toWeatherItem().copyWith(time: time);

  DailyItem.fromJson(dynamic json) {
    time = json['time'];
    values = json['values'] != null ? DailyData.fromJson(json['values']) : null;
  }

  DailyItem copyWith({
    String? time,
    DailyData? values,
  }) =>
      DailyItem(
        time: time ?? this.time,
        values: values ?? this.values,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['time'] = time;
    if (values != null) {
      map['values'] = values?.toJson();
    }
    return map;
  }
}
