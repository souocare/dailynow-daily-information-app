import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dailynow_app/utils/customNavbar.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:dailynow_app/services/weatherapi_services.dart';
import 'package:dailynow_app/models/CurrentWeatherModel.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

final client = http.Client();
final weatherApiClient = WeatherApiClient(httpClient: client);

class WeatherScreen extends StatefulWidget {
  WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  Color backgroundColor = Color.fromARGB(0, 255, 255, 255).withOpacity(0.5);
  final user = FirebaseAuth.instance.currentUser!;
  String latlon_cityname = ''; //lat lisbon
  String cityname = "";
  late String _selectedOption = "Predefined Location";
  late List<String> _options = ['Predefined Location', 'Use exact location'];
  bool isLoading = false;

  Future<void> getLocationFromFirebase() async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference users = firestore.collection('users');

    QuerySnapshot querySnapshot =
        await users.where('email', isEqualTo: user.email).get();
    if (querySnapshot.size > 0) {
      DocumentSnapshot doc = querySnapshot.docs[0];
      Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
      GeoPoint locationGeo = data['locationGeo'];
      String lat = locationGeo.latitude.toString();
      String lon = locationGeo.longitude.toString();
      String citynamedb = data['locationName'];
      latlon_cityname = "lat=$lat&lon=$lon";
      cityname = citynamedb;
      setState(() {
        cityname = citynamedb;
        _selectedOption =
            "Predefined Location"; // Update selected option based on Firebase data

        _options = ['Predefined Location', 'Use exact location'];
      });

      try {
        final weather =
            await weatherApiClient.getCurrentWeather(latlon_cityname);
        String rgbR = weather.bckColorR;
        String rgbG = weather.bckColorG;
        String rgbB = weather.bckColorB;
        if (rgbR != null && rgbG != null && rgbB != null) {
          setState(() {
            backgroundColor = Color.fromARGB(
                    0, int.parse(rgbR), int.parse(rgbG), int.parse(rgbB))
                .withOpacity(0.5);
            cityname = weather.cityName;
          });
        }
      } catch (e) {
        print(e);
      }
    }
  }

  @override
  void initState() {
    super.initState();

    if (_selectedOption == "Predefined Location") {
      getLocationFromFirebase(); // Move the call to getLocationFromFirebase() inside this condition block
    } else {
      _getLocation();
    }
  }

  String _getDayOfWeek(DateTime dateTime) {
    final now = DateTime.now();
    if (dateTime.year == now.year &&
        dateTime.month == now.month &&
        dateTime.day == now.day) {
      return 'Today';
    } else {
      return DateFormat('EEEE').format(dateTime);
    }
  }

  Future<void> _getLocation() async {
    try {
      setState(() {
        isLoading = true; // Set loading state to true
      });
      bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        return Future.error("Location service is not enabled");
      }

      LocationPermission locationPermission =
          await Geolocator.checkPermission();
      if (locationPermission == LocationPermission.denied) {
        locationPermission = await Geolocator.requestPermission();
        if (locationPermission == LocationPermission.denied) {
          return Future.error(
              "Location permission denied. Will use predefined location.");
        }
      }
      if (locationPermission == LocationPermission.deniedForever) {
        return Future.error(
            "Location permission denied. Will use predefined location.");
      }

      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      print(position);

      setState(() {
        _selectedOption = 'Use exact location';
        _options = ['Use exact location', 'Predefined Location'];
      });
      latlon_cityname = "lat=" +
          position.latitude.toString() +
          "&lon=" +
          position.longitude.toString();
      try {
        final weather =
            await weatherApiClient.getCurrentWeather(latlon_cityname);
        String rgbR = weather.bckColorR;
        String rgbG = weather.bckColorG;
        String rgbB = weather.bckColorB;
        if (rgbR != null && rgbG != null && rgbB != null) {
          print("--------------------------------");
          setState(() {
            backgroundColor = Color.fromARGB(
                    0, int.parse(rgbR), int.parse(rgbG), int.parse(rgbB))
                .withOpacity(0.5);
            cityname = weather.cityName;
          });
        }
      } catch (e) {
        print(e);
      }
    } catch (e) {
      print(e);
      setState(() {
        _selectedOption = 'Predefined Location';
        _options = ['Predefined Location', 'Use exact location'];
      });
      getLocationFromFirebase();
    } finally {
      setState(() {
        isLoading =
            false; // Set loading state to false after obtaining the data
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  // Dropdown menu
                  Container(
                    height: 30,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white, //<-- SEE HERE
                    ),
                    child: DropdownButton<String>(
                      underline: Container(
                        height: 0,
                        color: Colors.white, //<-- SEE HERE
                      ),
                      dropdownColor: Colors.white,
                      value: _selectedOption,
                      items: _options.map((String city) {
                        return DropdownMenuItem<String>(
                          value: city,
                          child: Text(city),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        // Update the function signature
                        setState(() {
                          _selectedOption =
                              newValue ?? ''; // Update the selected city
                          if (_selectedOption == "Predefined Location") {
                            getLocationFromFirebase();
                          } else if (_selectedOption == "Use exact location") {
                            _getLocation();
                          }
                        });
                      },
                    ),
                  ),
                  isLoading // Display loading circle while loading
                      ? Center(child: CircularProgressIndicator())
                      : FutureBuilder<CurrentWeather>(
                          future: weatherApiClient
                              .getCurrentWeather(latlon_cityname),
                          builder: (context, snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              return Center(
                                child: CircularProgressIndicator(),
                              );
                            } else if (snapshot.hasData) {
                              final weather = snapshot.data!;
                              return Column(
                                children: [
                                  const SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Center(
                                          child: Text(
                                            cityname,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 22,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Center(
                                          child: Text(
                                            weather.description,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 5),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Center(
                                          child: Text(
                                            '${weather.temperature.toStringAsFixed(1)}°C',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 46,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Image.asset(weather.icon, height: 100),
                                ],
                              );
                            } else if (snapshot.hasError) {
                              return Center(
                                child: Column(children: [
                                  const SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Center(
                                          child: Text(
                                            cityname,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 22,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Center(
                                    child: Text(
                                      "It was not possible to get the data. Please try again later." +
                                          snapshot.error.toString() +
                                          "." +
                                          latlon_cityname.toLowerCase(),
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 26,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 50,
                                  ),
                                ]),
                              );
                            } else {
                              return Center(
                                child: CircularProgressIndicator(),
                              );
                            }
                          },
                        ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: SingleChildScrollView(
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("3 Hour Forecast",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold))
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          color: Colors.grey.shade100,
                          height: 100,
                          width: double.infinity,
                          child: FutureBuilder<List<CurrentWeather>>(
                            future: weatherApiClient
                                .getHourlyWeather(latlon_cityname),
                            builder: (context, snapshot) {
                              if (snapshot.connectionState ==
                                  ConnectionState.waiting) {
                                return Center(
                                    child: CircularProgressIndicator());
                              } else if (snapshot.hasData) {
                                final weatherList = snapshot.data!;
                                return ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: weatherList.length,
                                  itemBuilder: (context, index) {
                                    final weather = weatherList[index];
                                    return Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          SizedBox(height: 5),
                                          Text(
                                            "${weather.dateTime.hour}h",
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                          Image.asset(
                                            weather.icon,
                                            height: 30,
                                          ),
                                          SizedBox(height: 5),
                                          Text(
                                            "${weather.temperature.toStringAsFixed(0)}°",
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                );
                              } else if (snapshot.hasError) {
                                return Center(
                                    child: Text('Error: ${snapshot.error}'));
                              } else {
                                return Container(); // Placeholder widget when there is no data
                              }
                            },
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Forecast for the next days",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold))
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          color: Colors.grey.shade100,
                          height: 160,
                          width: double.infinity,
                          child: FutureBuilder<List<CurrentWeather>>(
                            future: weatherApiClient
                                .getDailyWeather(latlon_cityname),
                            builder: (context, snapshot) {
                              if (snapshot.connectionState ==
                                  ConnectionState.waiting) {
                                return Center(
                                    child: CircularProgressIndicator());
                              } else if (snapshot.hasData) {
                                final weatherList = snapshot.data!;
                                return Padding(
                                  padding: const EdgeInsets.all(14.0),
                                  child: Column(
                                    children: [
                                      for (final weather in weatherList)
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Row(
                                            children: [
                                              Text(
                                                _getDayOfWeek(weather.dateTime),
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Expanded(
                                                child: Center(
                                                  child: Image.asset(
                                                    weather.icon,
                                                    height: 30,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 10),
                                              Text(
                                                "${weather.temperature.toStringAsFixed(0)}°",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                    ],
                                  ),
                                );
                              } else if (snapshot.hasError) {
                                return Center(
                                    child: Text('Error: ${snapshot.error}'));
                              } else {
                                return Container(); // Placeholder widget when there is no data
                              }
                            },
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        if (_selectedOption == "Predefined Location")
                          ElevatedButton(
                            child: Text(
                              'EDIT YOUR PREDEFINED LOCATION',
                              style: TextStyle(
                                color: const Color.fromARGB(255, 86, 85, 85),
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              ),
                            ),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              side: MaterialStateProperty.all<BorderSide>(
                                BorderSide(color: Colors.grey),
                              ),
                            ),
                            onPressed: () {
                              var controller = Get.put(MyController());
                              controller.currentIndex.value = 4;

                              // Navigator.pushReplacement(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => ProfileScreen()),
                              // );
                            },
                          ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
