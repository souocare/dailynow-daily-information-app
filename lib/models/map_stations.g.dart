// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_stations.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MapStationsAdapter extends TypeAdapter<MapStations> {
  @override
  final int typeId = 0;

  @override
  MapStations read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MapStations(
      lat: fields[0] as double?,
      lng: fields[1] as double?,
      stationName: fields[2] as String?,
      googleAdr: fields[3] as String?,
      metroAdr: fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, MapStations obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.lat)
      ..writeByte(1)
      ..write(obj.lng)
      ..writeByte(2)
      ..write(obj.stationName)
      ..writeByte(3)
      ..write(obj.googleAdr)
      ..writeByte(4)
      ..write(obj.metroAdr);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MapStationsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
