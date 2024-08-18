import 'package:isar/isar.dart';

part 'my_location.g.dart';

@collection
class MyLocation {
  Id? id;
  double? lat;
  double? lon;
  String? name;
  String? address;
  bool isActive = false;
  DateTime? createAt;

  MyLocation({
    this.id,
    this.lat,
    this.lon,
    this.name,
    this.address,
    this.isActive = false,
    this.createAt,
  });

  MyLocation updateActive(bool active) => MyLocation(
      id: id,
      lat: lat,
      lon: lon,
      name: name,
      address: address,
      createAt: createAt,
      isActive: active);
}
