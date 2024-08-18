import 'package:cekcuaca/core/utils.dart';
import 'package:cekcuaca/data/local/model/my_location.dart';
import 'package:cekcuaca/data/local/model/weather_item.dart';
import 'package:isar/isar.dart';

part 'weather_data.g.dart';

@collection
class WeatherData {
  Id? id;
  final List<WeatherItem>? hourly;
  final List<WeatherItem>? daily;
  final location = IsarLink<MyLocation>();

  WeatherData({this.hourly, this.daily});

  WeatherItem? get todayWeather {
    return daily
        ?.firstWhere((e) => DateTime.tryParse(e.time ?? "")?.isToday == true);
  }

  List<WeatherItem>? get todayHourly {
    return hourly
        ?.where((e) => DateTime.tryParse(e.time ?? "")?.isToday == true)
        .toList();
  }

  List<WeatherItem>? get tomorrowHourly {
    return hourly
        ?.where((e) => DateTime.tryParse(e.time ?? "")?.isTomorrow == true)
        .toList();
  }
}
