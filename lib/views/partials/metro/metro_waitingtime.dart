import 'package:dailynow_app/views/partials/metro/lines/waitingtime_greenline.dart';
import 'package:dailynow_app/views/partials/metro/lines/waitingtime_yellowline.dart';
import 'package:dailynow_app/views/partials/metro/metro_waitingtime_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dropdown_search/dropdown_search.dart';

class MetroWaitingTimeScreen extends StatefulWidget {
  @override
  State<MetroWaitingTimeScreen> createState() => _MetroWaitingTimeScreenState();
}

class _MetroWaitingTimeScreenState extends State<MetroWaitingTimeScreen> {
  String _selectedOption = 'Campo Grande';

  List<String> _options = ["Campo Grande"];
  bool showGreenLine = true;
  bool showYellowLine = true;
  bool showBlueLine = false;
  bool showRedLine = false;

  @override
  Widget build(BuildContext context) {
    SMetroWaitingTimeController _controllerwaitingtime =
        Get.put(SMetroWaitingTimeController());
    return Column(children: [
      Expanded(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 30,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white, //<-- SEE HERE
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        // child: DropdownSearch<String>(
                        //   popupProps: PopupProps.menu(
                        //     showSelectedItems: true,
                        //   ),
                        //   items: _options,
                        //   dropdownDecoratorProps: DropDownDecoratorProps(
                        //     dropdownSearchDecoration: InputDecoration(
                        //       labelText: "Choose the line",
                        //       hintText: "Line of the metro",
                        //     ),
                        //   ),
                        //   onChanged: (String? newValue) {
                        //     // Update the function signature
                        //     _selectedOption = newValue!;
                        //   },
                        //   selectedItem: _selectedOption,
                        // ),
                        child: DropdownButton<String>(
                          underline: Container(
                            height: 0,
                            color: Colors.white, //<-- SEE HERE
                          ),
                          dropdownColor: Colors.white,
                          hint: Text('Choose the line'),
                          value: _selectedOption,
                          items: _options.map((String newspaper) {
                            return DropdownMenuItem<String>(
                              value: newspaper,
                              child: Text(newspaper),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            // Update the function signature
                            _selectedOption = newValue!;
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  FutureBuilder(
                    future: _controllerwaitingtime.getNextTrainArrivalTime(
                      stationName: _selectedOption,
                      lineName: 'Verde',
                    ),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        final nextTrainTime =
                            snapshot.data as Map<String, List<String>>;
                        return WaitingTimeGreenLineScreen(
                          getinfo: showGreenLine,
                          nextTrainTime: nextTrainTime,
                        );
                      } else {
                        return Center(child: CircularProgressIndicator());
                      }
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Divider(),
                  SizedBox(
                    height: 15,
                  ),
                  FutureBuilder(
                    future: _controllerwaitingtime.getNextTrainArrivalTime(
                      stationName: _selectedOption,
                      lineName: 'Amarela',
                    ),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        final nextTrainTime =
                            snapshot.data as Map<String, List<String>>;
                        return WaitingTimeYellowLineScreen(
                          getinfo: showYellowLine,
                          nextTrainTime: nextTrainTime,
                        );
                      } else {
                        return Center(child: CircularProgressIndicator());
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ]);
  }
}
