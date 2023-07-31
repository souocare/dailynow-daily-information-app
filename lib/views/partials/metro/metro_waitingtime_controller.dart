import 'package:dailynow_app/models/schedules_metrolisboa.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

class SMetroWaitingTimeController extends GetxController {
  final RxList<ScheduleMetroLisboa> schedulesTimesDeparture =
      <ScheduleMetroLisboa>[
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 06, 30, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 06, 37, 50),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 06, 45, 40),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 06, 53, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 07, 01, 20),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 07, 09, 10),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 07, 17, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 07, 20, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 07, 25, 05),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 07, 30, 10),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 07, 35, 15),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 07, 40, 20),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 07, 45, 25),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 07, 50, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 07, 55, 35),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 08, 00, 40),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 08, 05, 45),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 08, 10, 50),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 08, 15, 55),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 08, 21, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 08, 26, 05),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 08, 31, 10),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 08, 36, 15),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 08, 41, 20),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 08, 46, 25),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 08, 51, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 08, 56, 35),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 09, 01, 40),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 09, 06, 45),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 09, 11, 50),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 09, 16, 55),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 09, 22, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 09, 27, 05),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 09, 32, 10),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 09, 37, 15),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 09, 42, 20),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 09, 47, 25),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 09, 52, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 09, 57, 35),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 10, 00, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 10, 07, 50),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 10, 15, 40),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 10, 23, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 10, 31, 20),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 10, 39, 10),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 10, 47, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 10, 54, 50),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 11, 02, 40),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 11, 10, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 11, 18, 20),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 11, 26, 10),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 11, 34, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 11, 41, 50),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 11, 49, 40),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 11, 57, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 12, 05, 20),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 12, 13, 10),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 12, 21, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 12, 28, 50),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 12, 36, 40),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 12, 44, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 12, 52, 20),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 13, 00, 10),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 13, 08, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 13, 15, 50),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 13, 23, 40),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 13, 31, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 13, 39, 20),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 13, 47, 10),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 13, 55, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 14, 02, 50),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 14, 10, 40),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 14, 18, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 14, 26, 20),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 14, 34, 10),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 14, 42, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 14, 49, 50),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 14, 57, 40),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 15, 05, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 15, 13, 20),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 15, 21, 10),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 15, 29, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 15, 36, 50),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 15, 44, 40),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 15, 52, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 16, 00, 20),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 16, 08, 10),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 16, 16, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 16, 23, 50),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 16, 30, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 16, 36, 10),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 16, 42, 20),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 16, 48, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 16, 54, 40),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 17, 00, 50),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 17, 07, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 17, 13, 10),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 17, 19, 20),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 17, 25, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 17, 31, 40),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 17, 37, 50),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 17, 44, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 17, 50, 10),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 17, 56, 20),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 18, 02, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 18, 08, 40),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 18, 14, 50),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 18, 21, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 18, 27, 10),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 18, 33, 20),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 18, 39, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 18, 45, 40),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 18, 51, 50),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 18, 58, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 19, 04, 10),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 19, 10, 20),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 19, 16, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 19, 22, 40),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 19, 28, 50),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 19, 35, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 19, 41, 10),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 19, 47, 20),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 19, 53, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 19, 59, 40),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 20, 00, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 20, 07, 40),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 20, 15, 20),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 20, 23, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 20, 30, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 20, 37, 25),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 20, 44, 50),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 20, 52, 15),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 20, 59, 40),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 21, 07, 05),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 21, 14, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 21, 21, 55),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 21, 29, 20),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 21, 36, 45),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 21, 44, 10),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 21, 51, 35),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 21, 59, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 22, 06, 25),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 22, 13, 50),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 22, 21, 15),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 22, 28, 40),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 22, 30, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 22, 38, 45),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 22, 47, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 22, 56, 15),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 23, 05, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 23, 13, 45),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 23, 22, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 23, 31, 15),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 23, 40, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 23, 48, 45),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 23, 57, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 2, 00, 06, 15),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 2, 00, 15, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 2, 00, 23, 45),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 2, 00, 32, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 2, 00, 41, 15),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 2, 00, 50, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 2, 00, 58, 45),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 2, 01, 07, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 2, 01, 16, 15),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 2, 01, 25, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 06, 30, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 06, 38, 40),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 06, 47, 20),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 06, 56, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 07, 04, 40),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 07, 13, 20),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 07, 22, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 07, 30, 40),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 07, 39, 20),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 07, 48, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 07, 56, 40),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 08, 05, 20),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 08, 14, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 08, 22, 40),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 08, 31, 20),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 08, 40, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 08, 48, 40),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 08, 57, 20),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 09, 06, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 09, 14, 40),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 09, 23, 20),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 09, 32, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 09, 40, 40),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 09, 49, 20),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 09, 58, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 10, 06, 40),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 10, 15, 20),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 10, 24, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 10, 32, 40),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 10, 41, 20),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 10, 50, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 10, 58, 40),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 11, 07, 20),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 11, 16, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 11, 24, 40),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 11, 33, 20),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 11, 42, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 11, 50, 40),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 11, 59, 20),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 12, 00, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 12, 08, 45),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 12, 17, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 12, 26, 15),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 12, 35, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 12, 43, 45),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 12, 52, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 13, 01, 15),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 13, 10, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 13, 18, 45),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 13, 27, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 13, 36, 15),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 13, 45, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 13, 53, 45),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 14, 02, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 14, 11, 15),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 14, 20, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 14, 28, 45),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 14, 37, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 14, 46, 15),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 14, 55, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 15, 03, 45),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 15, 12, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 15, 21, 15),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 15, 30, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 15, 38, 45),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 15, 47, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 15, 56, 15),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 16, 05, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 16, 13, 45),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 16, 22, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 16, 31, 15),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 16, 40, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 16, 48, 45),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 16, 57, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 17, 06, 15),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 17, 15, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 17, 23, 45),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 17, 32, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 17, 41, 15),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 17, 50, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 17, 58, 45),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 18, 07, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 18, 16, 15),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 18, 25, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 18, 33, 45),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 18, 42, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 18, 51, 15),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 19, 00, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 19, 08, 45),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 19, 17, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 19, 26, 15),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 19, 35, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 19, 43, 45),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 19, 52, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 20, 01, 15),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 20, 10, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 20, 18, 45),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 20, 27, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 20, 30, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 20, 38, 45),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 20, 47, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 20, 56, 15),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 21, 05, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 21, 13, 45),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 21, 22, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 21, 31, 15),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 21, 40, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 21, 48, 45),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 21, 57, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 22, 06, 15),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 22, 15, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 22, 23, 45),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 22, 32, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 22, 41, 15),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 22, 50, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 22, 58, 45),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 23, 07, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 23, 16, 15),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 23, 25, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 23, 33, 45),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 23, 42, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 1, 23, 51, 15),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 2, 00, 00, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 2, 00, 08, 45),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 2, 00, 17, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 2, 00, 26, 15),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 2, 00, 35, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 2, 00, 43, 45),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 2, 00, 52, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 2, 01, 01, 15),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 2, 01, 10, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 2, 01, 18, 45),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Amarela",
        schedule: DateTime(1900, 1, 2, 01, 27, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 06, 30, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 06, 38, 15),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 06, 46, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 06, 54, 45),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 07, 03, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 07, 11, 15),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 07, 19, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 07, 27, 45),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 07, 36, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 07, 44, 15),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 07, 52, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 08, 00, 45),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 08, 09, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 08, 17, 15),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 08, 25, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 08, 33, 45),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 08, 42, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 08, 50, 15),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 08, 58, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 09, 06, 45),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 09, 15, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 09, 23, 15),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 09, 31, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 09, 39, 45),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 09, 48, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 09, 56, 15),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 10, 04, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 10, 12, 45),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 10, 21, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 10, 29, 15),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 10, 37, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 10, 45, 45),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 10, 54, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 11, 02, 15),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 11, 10, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 11, 18, 45),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 11, 27, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 11, 35, 15),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 11, 43, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 11, 51, 45),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 12, 00, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 12, 08, 15),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 12, 16, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 12, 24, 45),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 12, 33, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 12, 41, 15),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 12, 49, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 12, 57, 45),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 13, 06, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 13, 14, 15),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 13, 22, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 13, 30, 45),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 13, 39, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 13, 47, 15),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 13, 55, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 14, 03, 45),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 14, 12, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 14, 20, 15),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 14, 28, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 14, 36, 45),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 14, 45, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 14, 53, 15),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 15, 01, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 15, 09, 45),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 15, 18, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 15, 26, 15),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 15, 34, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 15, 42, 45),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 15, 51, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 15, 59, 15),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 16, 07, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 16, 15, 45),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 16, 24, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 16, 32, 15),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 16, 40, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 16, 48, 45),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 16, 57, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 17, 05, 15),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 17, 13, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 17, 21, 45),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 17, 30, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 17, 38, 15),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 17, 46, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 17, 54, 45),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 18, 03, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 18, 11, 15),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 18, 19, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 18, 27, 45),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 18, 36, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 18, 44, 15),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 18, 52, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 19, 00, 45),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 19, 09, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 19, 17, 15),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 19, 25, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 19, 33, 45),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 19, 42, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 19, 50, 15),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 19, 58, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 20, 06, 45),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 20, 15, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 20, 23, 15),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 20, 31, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 20, 39, 45),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 20, 48, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 20, 56, 15),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 21, 00, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 21, 07, 55),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 21, 15, 50),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 21, 23, 45),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 21, 31, 40),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 21, 39, 35),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 21, 47, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 21, 55, 25),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 22, 03, 20),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 22, 11, 15),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 22, 19, 10),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 22, 27, 05),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 22, 30, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 22, 39, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 22, 49, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 22, 58, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 23, 08, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 23, 17, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 23, 27, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 23, 36, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 23, 46, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 23, 55, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 2, 00, 05, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 2, 00, 14, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 2, 00, 24, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 2, 00, 33, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 2, 00, 43, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 2, 00, 52, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 2, 01, 02, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 2, 01, 11, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 2, 01, 21, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 06, 30, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 06, 36, 50),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 06, 43, 40),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 06, 50, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 06, 57, 20),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 07, 04, 10),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 07, 11, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 07, 16, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 07, 21, 35),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 07, 27, 10),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 07, 32, 45),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 07, 38, 20),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 07, 43, 55),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 07, 49, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 07, 55, 05),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 08, 00, 40),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 08, 06, 15),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 08, 11, 50),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 08, 17, 25),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 08, 23, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 08, 28, 35),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 08, 34, 10),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 08, 39, 45),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 08, 45, 20),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 08, 50, 55),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 08, 56, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 09, 02, 05),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 09, 07, 40),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 09, 13, 15),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 09, 18, 50),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 09, 24, 25),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 09, 30, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 09, 35, 35),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 09, 41, 10),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 09, 46, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 09, 52, 10),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 09, 58, 20),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 10, 04, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 10, 10, 40),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 10, 16, 50),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 10, 23, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 10, 29, 10),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 10, 35, 20),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 10, 41, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 10, 47, 40),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 10, 53, 50),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 11, 00, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 11, 06, 10),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 11, 12, 20),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 11, 18, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 11, 24, 40),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 11, 30, 50),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 11, 37, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 11, 43, 10),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 11, 49, 20),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 11, 55, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 12, 01, 40),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 12, 07, 50),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 12, 14, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 12, 20, 10),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 12, 26, 20),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 12, 32, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 12, 38, 40),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 12, 44, 50),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 12, 51, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 12, 57, 10),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 13, 03, 20),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 13, 09, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 13, 15, 40),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 13, 21, 50),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 13, 28, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 13, 34, 10),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 13, 40, 20),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 13, 46, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 13, 52, 40),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 13, 58, 50),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 14, 05, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 14, 11, 10),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 14, 17, 20),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 14, 23, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 14, 29, 40),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 14, 35, 50),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 14, 42, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 14, 48, 10),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 14, 54, 20),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 15, 00, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 15, 06, 40),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 15, 12, 50),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 15, 19, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 15, 25, 10),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 15, 31, 20),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 15, 37, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 15, 43, 40),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 15, 49, 50),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 15, 56, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 16, 02, 10),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 16, 08, 20),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 16, 14, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 16, 16, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 16, 21, 35),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 16, 27, 10),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 16, 32, 45),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 16, 38, 20),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 16, 43, 55),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 16, 49, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 16, 55, 05),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 17, 00, 40),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 17, 06, 15),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 17, 11, 50),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 17, 17, 25),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 17, 23, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 17, 28, 35),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 17, 34, 10),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 17, 39, 45),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 17, 45, 20),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 17, 50, 55),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 17, 56, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 18, 02, 05),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 18, 07, 40),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 18, 13, 15),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 18, 18, 50),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 18, 24, 25),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 18, 30, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 18, 35, 35),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 18, 41, 10),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 18, 46, 45),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 18, 52, 20),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 18, 57, 55),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 19, 03, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 19, 09, 05),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 19, 14, 40),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 19, 20, 15),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 19, 25, 50),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 19, 31, 25),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 19, 37, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 19, 42, 35),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 19, 48, 10),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 19, 53, 45),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 19, 59, 20),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 20, 04, 55),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 20, 10, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 20, 16, 05),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 20, 21, 40),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 20, 27, 15),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 20, 31, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 20, 37, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 20, 43, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 20, 49, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 20, 55, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 21, 01, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 21, 07, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 21, 13, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 21, 19, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 21, 25, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 21, 31, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 21, 31, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 21, 38, 55),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 21, 46, 50),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 21, 54, 45),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 22, 02, 40),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 22, 10, 35),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 22, 18, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 22, 26, 25),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 22, 31, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 22, 40, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 22, 50, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 22, 59, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 23, 09, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 23, 18, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 23, 28, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 23, 37, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 23, 47, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 1, 23, 56, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 2, 00, 06, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 2, 00, 15, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 2, 00, 25, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 2, 00, 34, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 2, 00, 44, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 2, 00, 53, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 2, 01, 03, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 2, 01, 12, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Verde",
        schedule: DateTime(1900, 1, 2, 01, 22, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 06, 30, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 06, 39, 45),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 06, 49, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 06, 59, 15),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 07, 09, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 07, 11, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 07, 17, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 07, 23, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 07, 29, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 07, 35, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 07, 41, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 07, 47, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 07, 53, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 07, 59, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 08, 05, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 08, 11, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 08, 17, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 08, 23, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 08, 29, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 08, 35, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 08, 41, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 08, 47, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 08, 53, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 08, 59, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 09, 05, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 09, 11, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 09, 17, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 09, 23, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 09, 29, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 09, 35, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 09, 41, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 09, 46, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 09, 53, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 10, 00, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 10, 07, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 10, 14, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 10, 21, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 10, 28, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 10, 35, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 10, 42, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 10, 49, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 10, 56, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 11, 03, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 11, 10, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 11, 17, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 11, 24, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 11, 31, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 11, 38, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 11, 45, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 11, 52, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 11, 59, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 12, 06, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 12, 13, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 12, 20, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 12, 27, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 12, 34, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 12, 41, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 12, 48, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 12, 55, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 13, 02, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 13, 09, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 13, 16, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 13, 23, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 13, 30, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 13, 37, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 13, 44, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 13, 51, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 13, 58, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 14, 05, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 14, 12, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 14, 19, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 14, 26, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 14, 33, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 14, 40, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 14, 47, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 14, 54, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 15, 01, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 15, 08, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 15, 15, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 15, 22, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 15, 29, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 15, 36, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 15, 43, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 15, 50, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 15, 57, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 16, 04, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 16, 11, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 16, 18, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 16, 25, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 16, 31, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 16, 37, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 16, 43, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 16, 49, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 16, 55, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 17, 01, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 17, 07, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 17, 13, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 17, 19, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 17, 25, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 17, 31, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 17, 37, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 17, 43, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 17, 49, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 17, 55, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 18, 01, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 18, 07, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 18, 13, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 18, 19, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 18, 25, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 18, 31, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 18, 37, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 18, 43, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 18, 49, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 18, 55, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 19, 01, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 19, 07, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 19, 13, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 19, 16, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 19, 23, 05),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 19, 30, 10),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 19, 37, 15),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 19, 44, 20),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 19, 51, 25),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 19, 58, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 20, 05, 35),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 20, 12, 40),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 20, 19, 45),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 20, 26, 50),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 20, 31, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 20, 38, 55),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 20, 46, 50),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 20, 54, 45),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 21, 02, 40),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 21, 10, 35),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 21, 18, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 21, 26, 25),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 21, 34, 20),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 21, 42, 15),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 21, 50, 10),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 21, 58, 05),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 22, 06, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 22, 13, 55),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 22, 21, 50),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 22, 29, 45),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 22, 31, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 22, 40, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 22, 50, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 22, 59, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 23, 09, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 23, 18, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 23, 28, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 23, 37, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 23, 47, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 23, 56, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 2, 00, 06, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 2, 00, 15, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 2, 00, 25, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 2, 00, 34, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 2, 00, 44, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 2, 00, 53, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 2, 01, 03, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 2, 01, 12, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 2, 01, 22, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 06, 30, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 06, 38, 10),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 06, 46, 20),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 06, 54, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 07, 02, 40),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 07, 10, 50),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 07, 19, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 07, 27, 10),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 07, 35, 20),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 07, 43, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 07, 51, 40),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 07, 59, 50),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 08, 08, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 08, 16, 10),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 08, 24, 20),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 08, 32, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 08, 40, 40),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 08, 48, 50),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 08, 57, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 09, 05, 10),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 09, 13, 20),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 09, 21, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 09, 29, 40),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 09, 37, 50),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 09, 46, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 09, 54, 10),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 10, 02, 20),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 10, 10, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 10, 18, 40),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 10, 26, 50),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 10, 35, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 10, 43, 10),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 10, 51, 20),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 10, 59, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 11, 07, 40),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 11, 15, 50),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 11, 24, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 11, 32, 10),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 11, 40, 20),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 11, 48, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 11, 56, 40),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 12, 00, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 12, 07, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 12, 14, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 12, 21, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 12, 28, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 12, 35, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 12, 42, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 12, 49, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 12, 56, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 13, 03, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 13, 10, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 13, 17, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 13, 24, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 13, 31, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 13, 38, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 13, 45, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 13, 52, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 13, 59, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 14, 06, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 14, 13, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 14, 20, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 14, 27, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 14, 34, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 14, 41, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 14, 48, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 14, 55, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 15, 02, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 15, 09, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 15, 16, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 15, 23, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 15, 30, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 15, 37, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 15, 44, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 15, 51, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 15, 58, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 16, 05, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 16, 12, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 16, 19, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 16, 26, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 16, 33, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 16, 40, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 16, 47, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 16, 54, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 17, 01, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 17, 08, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 17, 15, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 17, 22, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 17, 29, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 17, 36, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 17, 43, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 17, 50, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 17, 57, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 18, 04, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 18, 11, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 18, 18, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 18, 25, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 18, 32, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 18, 39, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 18, 46, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 18, 53, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 19, 00, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 19, 07, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 19, 14, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 19, 21, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 19, 28, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 19, 35, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 19, 42, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 19, 49, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 19, 56, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 20, 03, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 20, 10, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 20, 16, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 20, 24, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 20, 32, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 20, 40, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 20, 48, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 20, 56, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 21, 04, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 21, 12, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 21, 20, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 21, 28, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 21, 36, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 21, 44, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 21, 52, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 22, 00, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 22, 08, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 22, 16, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 22, 16, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 22, 25, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 22, 35, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 22, 44, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 22, 54, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 23, 03, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 23, 13, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 23, 22, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 23, 32, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 23, 41, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 1, 23, 51, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 2, 00, 00, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 2, 00, 10, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 2, 00, 19, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 2, 00, 29, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 2, 00, 38, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 2, 00, 48, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 2, 00, 57, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 2, 01, 07, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 2, 01, 16, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Vermelha",
        schedule: DateTime(1900, 1, 2, 01, 26, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 06, 30, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 06, 38, 15),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 06, 46, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 06, 54, 45),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 07, 03, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 07, 11, 15),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 07, 19, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 07, 27, 45),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 07, 36, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 07, 44, 15),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 07, 52, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 08, 00, 45),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 08, 09, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 08, 17, 15),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 08, 25, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 08, 33, 45),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 08, 42, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 08, 50, 15),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 08, 58, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 09, 06, 45),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 09, 15, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 09, 23, 15),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 09, 31, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 09, 39, 45),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 09, 48, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 09, 56, 15),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 10, 04, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 10, 12, 45),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 10, 21, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 10, 29, 15),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 10, 37, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 10, 45, 45),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 10, 54, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 11, 02, 15),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 11, 10, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 11, 18, 45),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 11, 27, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 11, 35, 15),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 11, 43, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 11, 51, 45),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 12, 00, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 12, 01, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 12, 08, 20),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 12, 15, 40),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 12, 23, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 12, 30, 20),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 12, 37, 40),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 12, 45, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 12, 52, 20),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 12, 59, 40),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 13, 07, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 13, 14, 20),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 13, 21, 40),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 13, 29, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 13, 36, 20),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 13, 43, 40),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 13, 51, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 13, 58, 20),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 14, 05, 40),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 14, 13, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 14, 20, 20),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 14, 27, 40),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 14, 35, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 14, 42, 20),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 14, 49, 40),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 14, 57, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 15, 04, 20),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 15, 11, 40),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 15, 19, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 15, 26, 20),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 15, 33, 40),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 15, 41, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 15, 48, 20),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 15, 55, 40),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 16, 03, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 16, 10, 20),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 16, 17, 40),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 16, 25, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 16, 32, 20),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 16, 39, 40),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 16, 47, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 16, 54, 20),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 17, 01, 40),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 17, 09, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 17, 16, 20),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 17, 23, 40),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 17, 31, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 17, 38, 20),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 17, 45, 40),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 17, 53, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 18, 00, 20),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 18, 07, 40),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 18, 15, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 18, 22, 20),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 18, 29, 40),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 18, 37, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 18, 44, 20),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 18, 51, 40),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 18, 59, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 19, 06, 20),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 19, 13, 40),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 19, 21, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 19, 28, 20),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 19, 35, 40),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 19, 43, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 19, 50, 20),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 19, 57, 40),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 20, 05, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 20, 12, 20),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 20, 16, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 20, 24, 05),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 20, 32, 10),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 20, 40, 15),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 20, 48, 20),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 20, 56, 25),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 21, 04, 30),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 21, 12, 35),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 21, 20, 40),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 21, 28, 45),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 21, 36, 50),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 21, 44, 55),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 21, 53, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 22, 01, 05),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 22, 09, 10),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 22, 17, 15),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 22, 25, 20),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 22, 31, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 22, 41, 40),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 22, 52, 20),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 23, 03, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 23, 13, 40),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 23, 24, 20),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 23, 35, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 23, 45, 40),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 23, 56, 20),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 2, 00, 07, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 2, 00, 17, 40),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 2, 00, 28, 20),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 2, 00, 39, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 2, 00, 49, 40),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 2, 01, 00, 20),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 2, 01, 11, 00),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 2, 01, 21, 40),
        isweekend: true),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 06, 30, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 06, 37, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 06, 45, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 06, 52, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 07, 00, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 07, 01, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 07, 07, 45),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 07, 14, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 07, 21, 15),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 07, 28, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 07, 31, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 07, 36, 45),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 07, 42, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 07, 48, 15),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 07, 54, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 07, 59, 45),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 08, 05, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 08, 11, 15),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 08, 17, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 08, 22, 45),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 08, 28, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 08, 34, 15),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 08, 40, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 08, 45, 45),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 08, 51, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 08, 57, 15),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 09, 03, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 09, 08, 45),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 09, 14, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 09, 20, 15),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 09, 26, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 09, 31, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 09, 37, 15),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 09, 43, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 09, 49, 45),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 09, 56, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 10, 01, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 10, 08, 25),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 10, 15, 50),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 10, 23, 15),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 10, 30, 40),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 10, 38, 05),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 10, 45, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 10, 52, 55),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 11, 00, 20),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 11, 07, 45),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 11, 15, 10),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 11, 22, 35),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 11, 30, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 11, 37, 25),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 11, 44, 50),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 11, 52, 15),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 11, 59, 40),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 12, 07, 05),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 12, 14, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 12, 21, 55),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 12, 29, 20),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 12, 36, 45),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 12, 44, 10),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 12, 51, 35),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 12, 59, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 13, 06, 25),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 13, 13, 50),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 13, 21, 15),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 13, 28, 40),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 13, 36, 05),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 13, 43, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 13, 50, 55),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 13, 58, 20),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 14, 05, 45),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 14, 13, 10),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 14, 20, 35),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 14, 28, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 14, 35, 25),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 14, 42, 50),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 14, 50, 15),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 14, 57, 40),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 15, 05, 05),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 15, 12, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 15, 19, 55),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 15, 27, 20),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 15, 34, 45),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 15, 42, 10),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 15, 49, 35),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 15, 57, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 16, 04, 25),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 16, 11, 50),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 16, 19, 15),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 16, 26, 40),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 16, 31, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 16, 36, 45),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 16, 42, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 16, 48, 15),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 16, 54, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 16, 59, 45),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 17, 05, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 17, 11, 15),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 17, 17, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 17, 22, 45),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 17, 28, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 17, 34, 15),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 17, 40, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 17, 45, 45),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 17, 51, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 17, 57, 15),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 18, 03, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 18, 08, 45),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 18, 14, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 18, 20, 15),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 18, 26, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 18, 31, 45),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 18, 37, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 18, 43, 15),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 18, 49, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 18, 54, 45),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 19, 00, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 19, 01, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 19, 07, 45),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 19, 14, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 19, 21, 15),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 19, 28, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 19, 34, 45),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 19, 41, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 19, 48, 15),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 19, 55, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 20, 01, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 20, 08, 25),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 20, 15, 50),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 20, 23, 15),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 20, 30, 40),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 20, 31, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 20, 39, 05),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 20, 47, 10),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 20, 55, 15),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 21, 01, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 21, 09, 05),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 21, 17, 10),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 21, 25, 15),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 21, 33, 20),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 21, 41, 25),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 21, 49, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 21, 57, 35),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 22, 05, 40),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 22, 13, 45),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 22, 21, 50),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 22, 29, 55),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 22, 31, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 22, 41, 45),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 22, 52, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 23, 03, 15),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 23, 14, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 23, 24, 45),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 23, 35, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 23, 46, 15),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 1, 23, 57, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 2, 00, 07, 45),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 2, 00, 18, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 2, 00, 29, 15),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 2, 00, 40, 00),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 2, 00, 50, 45),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 2, 01, 01, 30),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 2, 01, 12, 15),
        isweekend: false),
    ScheduleMetroLisboa(
        linemetro: "Azul",
        schedule: DateTime(1900, 1, 2, 01, 23, 00),
        isweekend: false),
  ].obs;

  var box = Hive.box('hivedb');
  RxList<ScheduleMetroLisboa> schedulemetrolisboalist =
      <ScheduleMetroLisboa>[].obs;

  final schedulemetroinfovar = {
    'Aeroporto': {
      'Vermelha': {
        'São Sebastião': {'timeElapsed': 0},
      },
    },
    'São Sebastião': {
      'Vermelha': {
        'Aeroporto': {'timeElapsed': 0},
      },
    },
    'Odivelas': {
      'Amarela': {
        'Rato': {'timeElapsed': 0},
      },
    },
    'Rato': {
      'Amarela': {
        'Odivelas': {'timeElapsed': 0},
      },
    },
    'Telheiras': {
      'Verde': {
        'Cais do Sodré': {'timeElapsed': 0},
      },
    },
    'Cais do Sodré': {
      'Verde': {
        'Telheiras': {'timeElapsed': 0},
      },
    },
    'Reboleira': {
      'Amarela': {
        'Santa Apolónia': {'timeElapsed': 0},
      },
    },
    'Santa Apolónia': {
      'Amarela': {
        'Reboleira': {'timeElapsed': 0},
      },
    },
    //LINHA VERMELHA
    'Encarnação': {
      'Vermelha': {
        'Aeroporto': {'timeElapsed': 18},
        'São Sebastião': {'timeElapsed': 2},
      },
    },
    'Moscavide': {
      'Vermelha': {
        'Aeroporto': {'timeElapsed': 16},
        'São Sebastião': {'timeElapsed': 5},
      },
    },
    'Oriente': {
      'Vermelha': {
        'Aeroporto': {'timeElapsed': 14},
        'São Sebastião': {'timeElapsed': 6},
      },
    },
    'Cabo Ruivo': {
      'Vermelha': {
        'Aeroporto': {'timeElapsed': 12},
        'São Sebastião': {'timeElapsed': 8},
      },
    },
    // COMBINADAS DE LINHAS
    'Campo Grande': {
      'Amarela': {
        'Rato': {'timeElapsed': 8},
        'Odivelas': {'timeElapsed': 10},
      },
      'Verde': {
        'Telheiras': {'timeElapsed': 12},
        'Cais do Sodré': {'timeElapsed': 2},
      },
    },
  }.obs;

  @override
  void onInit() {
    super.onInit();
    box.put("scheduleMetroLisboa", schedulesTimesDeparture);
    schedulemetrolisboalist = box.get("scheduleMetroLisboa");
    print("hivedb  DATA IS = ${schedulemetrolisboalist[0]}");
  }

  Future<Map<String, List<String>>> getNextTrainArrivalTime(
      {required String stationName, required String lineName}) async {
    final now = DateTime.now();
    final schedulesNorth;
    final schedulesSouth;
    if (now.hour == 0 || now.hour == 1) {
      var nowyesterday = new DateTime(now.year, now.month, now.day - 1);
      if (nowyesterday.weekday == DateTime.sunday ||
          nowyesterday.weekday == DateTime.saturday) {
        schedulesNorth = schedulesTimesDeparture
            .where((schedule) =>
                schedule.linemetro == lineName && schedule.isweekend == true)
            .toList();
        schedulesSouth = schedulesTimesDeparture
            .where((schedule) =>
                schedule.linemetro == lineName && schedule.isweekend == true)
            .toList();
      } else {
        schedulesNorth = schedulesTimesDeparture
            .where((schedule) =>
                schedule.linemetro == lineName && schedule.isweekend == false)
            .toList();
        schedulesSouth = schedulesTimesDeparture
            .where((schedule) =>
                schedule.linemetro == lineName && schedule.isweekend == false)
            .toList();
      }
    } else {
      if (now.weekday == DateTime.sunday || now.weekday == DateTime.saturday) {
        schedulesNorth = schedulesTimesDeparture
            .where((schedule) =>
                schedule.linemetro == lineName && schedule.isweekend == true)
            .toList();
        schedulesSouth = schedulesTimesDeparture
            .where((schedule) =>
                schedule.linemetro == lineName && schedule.isweekend == true)
            .toList();
      } else {
        schedulesNorth = schedulesTimesDeparture
            .where((schedule) =>
                schedule.linemetro == lineName && schedule.isweekend == false)
            .toList();
        schedulesSouth = schedulesTimesDeparture
            .where((schedule) =>
                schedule.linemetro == lineName && schedule.isweekend == false)
            .toList();
      }
    }

    Map<String, List<String>> nextrains = Map<String, List<String>>();

    if (lineName == "Amarela") {
      final timeElapsedOdivelas = schedulemetroinfovar[stationName]![lineName]![
          'Odivelas']!['timeElapsed']!;
      nextrains["Odivelas"] = []; //NÃO APAGAR
      int addednorth = 0;
      for (int i = 0; i < schedulesNorth.length; i++) {
        DateTime? scheduleafteraddingtime = schedulesNorth[i]
            .schedule
            ?.add(Duration(minutes: timeElapsedOdivelas.toInt()));
        DateTime scheduleafteraddingtimefinal;
        if (scheduleafteraddingtime!.day == 2) {
          scheduleafteraddingtimefinal = DateTime(
              now.year,
              now.month,
              now.day + 1,
              scheduleafteraddingtime.hour,
              scheduleafteraddingtime.minute,
              scheduleafteraddingtime.second);
        } else {
          scheduleafteraddingtimefinal = DateTime(
              now.year,
              now.month,
              now.day,
              scheduleafteraddingtime.hour,
              scheduleafteraddingtime.minute,
              scheduleafteraddingtime.second);
        }
        if (scheduleafteraddingtimefinal.isAfter(now) && addednorth < 3) {
          int hours = scheduleafteraddingtimefinal.difference(now).inHours;
          int minutes =
              scheduleafteraddingtimefinal.difference(now).inMinutes % 60;
          int seconds =
              scheduleafteraddingtimefinal.difference(now).inSeconds % 60;
          nextrains["Odivelas"]?.add(hours.toString() +
              "h" +
              minutes.toString() +
              "m" +
              seconds.toString() +
              "s");
          addednorth = addednorth + 1;
        }
      }
      nextrains["Rato"] = [];
      final timeElapsedRato = schedulemetroinfovar[stationName]![lineName]![
          "Rato"]!['timeElapsed']!;
      int addedsouth = 0;

      for (int i = 0; i < schedulesSouth.length; i++) {
        DateTime? scheduleafteraddingtime = schedulesSouth[i]
            .schedule
            ?.add(Duration(minutes: timeElapsedRato.toInt()));
        DateTime scheduleafteraddingtimefinal;
        if (scheduleafteraddingtime!.day == 2) {
          scheduleafteraddingtimefinal = DateTime(
              now.year,
              now.month,
              now.day + 1,
              scheduleafteraddingtime.hour,
              scheduleafteraddingtime.minute,
              scheduleafteraddingtime.second);
        } else {
          scheduleafteraddingtimefinal = DateTime(
              now.year,
              now.month,
              now.day,
              scheduleafteraddingtime.hour,
              scheduleafteraddingtime.minute,
              scheduleafteraddingtime.second);
        }
        if (scheduleafteraddingtimefinal.isAfter(now) && addedsouth < 3) {
          int hours = scheduleafteraddingtimefinal.difference(now).inHours;
          int minutes =
              scheduleafteraddingtimefinal.difference(now).inMinutes % 60;
          int seconds =
              scheduleafteraddingtimefinal.difference(now).inSeconds % 60;
          nextrains["Rato"]?.add(hours.toString() +
              "h" +
              minutes.toString() +
              "m" +
              seconds.toString() +
              "s");
          addedsouth = addedsouth + 1;
        }
      }
    }

    if (lineName == "Verde") {
      final timeElapsedTelheiras = schedulemetroinfovar[stationName]![
          lineName]!['Telheiras']!['timeElapsed']!;
      int addednorth = 0;
      nextrains["Telheiras"] = []; //NÃO APAGAR
      for (int i = 0; i < schedulesNorth.length; i++) {
        DateTime? scheduleafteraddingtime = schedulesNorth[i]
            .schedule
            ?.add(Duration(minutes: timeElapsedTelheiras.toInt()));
        DateTime scheduleafteraddingtimefinal;
        if (scheduleafteraddingtime!.day == 2) {
          scheduleafteraddingtimefinal = DateTime(
              now.year,
              now.month,
              now.day + 1,
              scheduleafteraddingtime.hour,
              scheduleafteraddingtime.minute,
              scheduleafteraddingtime.second);
        } else {
          scheduleafteraddingtimefinal = DateTime(
              now.year,
              now.month,
              now.day,
              scheduleafteraddingtime.hour,
              scheduleafteraddingtime.minute,
              scheduleafteraddingtime.second);
        }
        if (scheduleafteraddingtimefinal.isAfter(now) && addednorth < 3) {
          int hours = scheduleafteraddingtimefinal.difference(now).inHours;
          int minutes =
              scheduleafteraddingtimefinal.difference(now).inMinutes % 60;
          int seconds =
              scheduleafteraddingtimefinal.difference(now).inSeconds % 60;
          nextrains["Telheiras"]?.add(hours.toString() +
              "h" +
              minutes.toString() +
              "m" +
              seconds.toString() +
              "s");
          addednorth = addednorth + 1;
        }
      }
      final timeElapsedCaisSodre = schedulemetroinfovar[stationName]![
          lineName]!["Cais do Sodré"]!['timeElapsed']!;
      int addedsouth = 0;
      nextrains["Cais do Sodré"] = []; //NÃO APAGAR

      for (int i = 0; i < schedulesSouth.length; i++) {
        DateTime? scheduleafteraddingtime = schedulesSouth[i]
            .schedule
            ?.add(Duration(minutes: timeElapsedCaisSodre.toInt()));
        DateTime scheduleafteraddingtimefinal;
        if (scheduleafteraddingtime!.day == 2) {
          scheduleafteraddingtimefinal = DateTime(
              now.year,
              now.month,
              now.day + 1,
              scheduleafteraddingtime.hour,
              scheduleafteraddingtime.minute,
              scheduleafteraddingtime.second);
        } else {
          scheduleafteraddingtimefinal = DateTime(
              now.year,
              now.month,
              now.day,
              scheduleafteraddingtime.hour,
              scheduleafteraddingtime.minute,
              scheduleafteraddingtime.second);
        }
        if (scheduleafteraddingtimefinal.isAfter(now) && addedsouth < 3) {
          int hours = scheduleafteraddingtimefinal.difference(now).inHours;
          int minutes =
              scheduleafteraddingtimefinal.difference(now).inMinutes % 60;
          int seconds =
              scheduleafteraddingtimefinal.difference(now).inSeconds % 60;
          nextrains["Cais do Sodré"]?.add(hours.toString() +
              "h" +
              minutes.toString() +
              "m" +
              seconds.toString() +
              "s");
          addedsouth = addedsouth + 1;
        }
      }
    }

    if (lineName == "Vermelha") {
      final timeElapsedAeroporto = schedulemetroinfovar[stationName]![
          lineName]!['Telheiras']!['timeElapsed']!;
      int addednorth = 0;
      nextrains["Aeroporto"] = []; //NÃO APAGAR
      for (int i = 0; i < schedulesNorth.length; i++) {
        DateTime? scheduleafteraddingtime = schedulesNorth[i]
            .schedule
            ?.add(Duration(minutes: timeElapsedAeroporto.toInt()));
        DateTime scheduleafteraddingtimefinal;
        if (scheduleafteraddingtime!.day == 2) {
          scheduleafteraddingtimefinal = DateTime(
              now.year,
              now.month,
              now.day + 1,
              scheduleafteraddingtime.hour,
              scheduleafteraddingtime.minute,
              scheduleafteraddingtime.second);
        } else {
          scheduleafteraddingtimefinal = DateTime(
              now.year,
              now.month,
              now.day,
              scheduleafteraddingtime.hour,
              scheduleafteraddingtime.minute,
              scheduleafteraddingtime.second);
        }
        if (scheduleafteraddingtimefinal.isAfter(now) && addednorth < 3) {
          int hours = scheduleafteraddingtimefinal.difference(now).inHours;
          int minutes =
              scheduleafteraddingtimefinal.difference(now).inMinutes % 60;
          int seconds =
              scheduleafteraddingtimefinal.difference(now).inSeconds % 60;
          nextrains["Aeroporto"]?.add(hours.toString() +
              "h" +
              minutes.toString() +
              "m" +
              seconds.toString() +
              "s");
          addednorth = addednorth + 1;
        }
      }
      final timeElapsedSaoSebastiao = schedulemetroinfovar[stationName]![
          lineName]!["São Sebastião"]!['timeElapsed']!;
      int addedsouth = 0;
      nextrains["São Sebastião"] = []; //NÃO APAGAR

      for (int i = 0; i < schedulesSouth.length; i++) {
        DateTime? scheduleafteraddingtime = schedulesSouth[i]
            .schedule
            ?.add(Duration(minutes: timeElapsedSaoSebastiao.toInt()));
        DateTime scheduleafteraddingtimefinal;
        if (scheduleafteraddingtime!.day == 2) {
          scheduleafteraddingtimefinal = DateTime(
              now.year,
              now.month,
              now.day + 1,
              scheduleafteraddingtime.hour,
              scheduleafteraddingtime.minute,
              scheduleafteraddingtime.second);
        } else {
          scheduleafteraddingtimefinal = DateTime(
              now.year,
              now.month,
              now.day,
              scheduleafteraddingtime.hour,
              scheduleafteraddingtime.minute,
              scheduleafteraddingtime.second);
        }
        if (scheduleafteraddingtimefinal.isAfter(now) && addedsouth < 3) {
          int hours = scheduleafteraddingtimefinal.difference(now).inHours;
          int minutes =
              scheduleafteraddingtimefinal.difference(now).inMinutes % 60;
          int seconds =
              scheduleafteraddingtimefinal.difference(now).inSeconds % 60;
          nextrains["São Sebastião"]?.add(hours.toString() +
              "h" +
              minutes.toString() +
              "m" +
              seconds.toString() +
              "s");
          addedsouth = addedsouth + 1;
        }
      }
    }

    if (lineName == "Azul") {
      final timeElapsedReboleira = schedulemetroinfovar[stationName]![
          lineName]!['Reboleira']!['timeElapsed']!;
      int addednorth = 0;
      nextrains["Reboleira"] = []; //NÃO APAGAR
      for (int i = 0; i < schedulesNorth.length; i++) {
        DateTime? scheduleafteraddingtime = schedulesNorth[i]
            .schedule
            ?.add(Duration(minutes: timeElapsedReboleira.toInt()));
        DateTime scheduleafteraddingtimefinal;
        if (scheduleafteraddingtime!.day == 2) {
          scheduleafteraddingtimefinal = DateTime(
              now.year,
              now.month,
              now.day + 1,
              scheduleafteraddingtime.hour,
              scheduleafteraddingtime.minute,
              scheduleafteraddingtime.second);
        } else {
          scheduleafteraddingtimefinal = DateTime(
              now.year,
              now.month,
              now.day,
              scheduleafteraddingtime.hour,
              scheduleafteraddingtime.minute,
              scheduleafteraddingtime.second);
        }
        if (scheduleafteraddingtimefinal.isAfter(now) && addednorth < 3) {
          int hours = scheduleafteraddingtimefinal.difference(now).inHours;
          int minutes =
              scheduleafteraddingtimefinal.difference(now).inMinutes % 60;
          int seconds =
              scheduleafteraddingtimefinal.difference(now).inSeconds % 60;
          nextrains["Reboleira"]?.add(hours.toString() +
              "h" +
              minutes.toString() +
              "m" +
              seconds.toString() +
              "s");
          addednorth = addednorth + 1;
        }
      }
      final timeElapsedSantaApolonia = schedulemetroinfovar[stationName]![
          lineName]!["Santa Apolónia"]!['timeElapsed']!;
      int addedsouth = 0;
      nextrains["Santa Apolónia"] = []; //NÃO APAGAR

      for (int i = 0; i < schedulesSouth.length; i++) {
        DateTime? scheduleafteraddingtime = schedulesSouth[i]
            .schedule
            ?.add(Duration(minutes: timeElapsedSantaApolonia.toInt()));
        DateTime scheduleafteraddingtimefinal;
        if (scheduleafteraddingtime!.day == 2) {
          scheduleafteraddingtimefinal = DateTime(
              now.year,
              now.month,
              now.day + 1,
              scheduleafteraddingtime.hour,
              scheduleafteraddingtime.minute,
              scheduleafteraddingtime.second);
        } else {
          scheduleafteraddingtimefinal = DateTime(
              now.year,
              now.month,
              now.day,
              scheduleafteraddingtime.hour,
              scheduleafteraddingtime.minute,
              scheduleafteraddingtime.second);
        }
        if (scheduleafteraddingtimefinal.isAfter(now) && addedsouth < 3) {
          int hours = scheduleafteraddingtimefinal.difference(now).inHours;
          int minutes =
              scheduleafteraddingtimefinal.difference(now).inMinutes % 60;
          int seconds =
              scheduleafteraddingtimefinal.difference(now).inSeconds % 60;
          nextrains["Santa Apolónia"]?.add(hours.toString() +
              "h" +
              minutes.toString() +
              "m" +
              seconds.toString() +
              "s");
          addedsouth = addedsouth + 1;
        }
      }
    }
    return nextrains;
  }
}
