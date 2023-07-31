import 'package:dailynow_app/views/partials/metro/metro_generalinfo.dart';
import 'package:dailynow_app/views/partials/metro/metro_interactivemap.dart';
import 'package:dailynow_app/views/partials/metro/metro_waitingtime.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MetroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // number of tabs
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(58),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: AppBar(
              backgroundColor: Colors.white,
              titleSpacing: 0,
              elevation: 0,
              title: null,
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(48),
                child: Theme(
                  data: ThemeData(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.white,
                          width: 2,
                        ),
                      ),
                    ),
                    child: TabBar(
                      indicatorColor: Color(0xFF2B6ED3),
                      labelColor: Color(0xFF2B6ED3),
                      unselectedLabelColor: Colors.grey,
                      tabs: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 02),
                          child: Align(
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "General Info",
                                  style: TextStyle(fontSize: 12),
                                ),
                                Icon(CupertinoIcons.info,
                                    size: 12, color: Colors.black),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 02),
                          child: Align(
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Waiting Time",
                                  style: TextStyle(fontSize: 11),
                                ),
                                Icon(CupertinoIcons.clock,
                                    size: 12, color: Colors.black),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 02),
                          child: Align(
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Interactive Map",
                                  style: TextStyle(fontSize: 12),
                                ),
                                Icon(
                                  CupertinoIcons.map_pin,
                                  size: 12,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                      labelStyle: TextStyle(
                          fontSize: 12.5), // set font size of selected tab text
                      unselectedLabelStyle: TextStyle(fontSize: 12.5),
                    ),
                  ),
                ),
              ),
              toolbarHeight: 10,
            ),
          ),
        ),
        body: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          children: [
            // first tab content
            MetroGeneralInfoScreen(),
            MetroWaitingTimeScreen(),
            // second tab content
            MetroInteractiveMapScreen(),
          ],
        ),
      ),
    );
  }
}
