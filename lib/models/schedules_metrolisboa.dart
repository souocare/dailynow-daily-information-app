import 'package:hive/hive.dart';
part 'schedules_metrolisboa.g.dart';

@HiveType(typeId: 1)
class ScheduleMetroLisboa {
  @HiveField(0)
  String? linemetro;

  @HiveField(1)
  DateTime? schedule;

  @HiveField(2)
  bool? isweekend;

  ScheduleMetroLisboa({
    this.linemetro,
    this.schedule,
    this.isweekend,
  });
}
