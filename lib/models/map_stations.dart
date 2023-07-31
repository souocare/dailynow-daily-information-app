import 'package:hive/hive.dart';
part 'map_stations.g.dart';

@HiveType(typeId: 0)
class MapStations {
  @HiveField(0)
  double? lat;

  @HiveField(1)
  double? lng;

  @HiveField(2)
  String? stationName;

  @HiveField(3)
  String? googleAdr;

  @HiveField(4)
  String? metroAdr;

  MapStations(
      {this.lat, this.lng, this.stationName, this.googleAdr, this.metroAdr});
}
