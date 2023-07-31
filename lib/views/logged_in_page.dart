import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/customNavbar.dart';

class BottomNavBarWrapper extends StatefulWidget {
  @override
  _BottomNavBarWrapperState createState() => _BottomNavBarWrapperState();
}

class _BottomNavBarWrapperState extends State<BottomNavBarWrapper> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print("Answer chosen!");
  }

  var controller = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(() => controller.screens[controller.currentIndex.value]),
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: controller.currentIndex.value,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            onTap: (index) => controller.navbarIndexsFunc(index),
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(controller.iconPathsFinal[0],
                    width: 40, height: 40),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Image.asset(controller.iconPathsFinal[1],
                    width: 40, height: 40),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Image.asset(controller.iconPathsFinal[2],
                    width: 40, height: 40),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Image.asset(controller.iconPathsFinal[3],
                    width: 40, height: 40),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Image.asset(controller.iconPathsFinal[4],
                    width: 40, height: 40),
                label: "",
              ),
            ],
            backgroundColor: Color(0xFFD9D9D9),
          ),
        ));
  }
}

class LoggedIn extends StatefulWidget {
  @override
  State<LoggedIn> createState() => _LoggedInState();
}

class _LoggedInState extends State<LoggedIn> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print("Answer chosen!");
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavBarWrapper();
  }
}
