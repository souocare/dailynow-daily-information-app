// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedules_metrolisboa.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ScheduleMetroLisboaAdapter extends TypeAdapter<ScheduleMetroLisboa> {
  @override
  final int typeId = 1;

  @override
  ScheduleMetroLisboa read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ScheduleMetroLisboa(
      linemetro: fields[0] as String?,
      schedule: fields[1] as DateTime?,
      isweekend: fields[2] as bool?,
    );
  }

  @override
  void write(BinaryWriter writer, ScheduleMetroLisboa obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.linemetro)
      ..writeByte(1)
      ..write(obj.schedule)
      ..writeByte(2)
      ..write(obj.isweekend);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ScheduleMetroLisboaAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
