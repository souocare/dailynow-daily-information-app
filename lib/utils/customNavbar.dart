import 'package:get/get.dart';

import '../views/home_page.dart';
import '../views/metro_page.dart';
import '../views/news_page.dart';
import '../views/profile_page.dart';
import '../views/weather_page.dart';

class MyController extends GetxController {
  RxInt currentIndex = 0.obs;

  var iconPathsFinal = [
    "assets/iconsbar/home_selected.png",
    "assets/iconsbar/weather.png",
    "assets/iconsbar/news.png",
    "assets/iconsbar/metro.png",
    "assets/iconsbar/profile.png",
  ].obs;

  var notSelectedIconPaths = [
    "assets/iconsbar/home.png",
    "assets/iconsbar/weather.png",
    "assets/iconsbar/news.png",
    "assets/iconsbar/metro.png",
    "assets/iconsbar/profile.png",
  ].obs;
  var selectedIconPaths = [
    "assets/iconsbar/home_selected.png",
    "assets/iconsbar/weather_selected.png",
    "assets/iconsbar/news_selected.png",
    "assets/iconsbar/metro_selected.png",
    "assets/iconsbar/profile_selected.png",
  ].obs;

  void navbarIndexsFunc(index) {
    currentIndex.value = index;
    // Set the selected icon path for the "Weather" option
    if (currentIndex.value == 0) {
      iconPathsFinal[0] = selectedIconPaths[0];
    } else {
      iconPathsFinal[0] = notSelectedIconPaths[0];
    }
    if (currentIndex.value == 1) {
      iconPathsFinal[1] = selectedIconPaths[1];
    } else {
      iconPathsFinal[1] = notSelectedIconPaths[1];
    }
    if (currentIndex.value == 2) {
      iconPathsFinal[2] = selectedIconPaths[2];
    } else {
      iconPathsFinal[2] = notSelectedIconPaths[2];
    }
    if (index == 3) {
      iconPathsFinal[3] = selectedIconPaths[3];
    } else {
      iconPathsFinal[3] = notSelectedIconPaths[3];
    }
    if (index == 4) {
      iconPathsFinal[4] = selectedIconPaths[4];
    } else {
      iconPathsFinal[4] = notSelectedIconPaths[4];
    }
  }

//screen move with change index
  var screens = [
    HomeScreen(),
    WeatherScreen(),
    NewsScreen(),
    MetroScreen(),
    ProfileScreen(),
  ].obs;
}
