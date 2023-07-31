import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:dailynow_app/services/weatherapi_services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;

import '../../../utils/colors.dart';

final client = http.Client();
final weatherApiClient = WeatherApiClient(httpClient: client);

class ProfileChangeLocationScreen extends StatefulWidget {
  @override
  State<ProfileChangeLocationScreen> createState() =>
      _ProfileChangeLocationScreen();
}

class _ProfileChangeLocationScreen extends State<ProfileChangeLocationScreen> {
  final user = FirebaseAuth.instance.currentUser!;
  String cityName = '';
  String latlon = "";
  bool islocationsetempty = true;

  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  Future<void> setLocationInFirebase(
      String cityNameSet, double latitude, double longitude) async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference users = firestore.collection('users');

    QuerySnapshot querySnapshot =
        await users.where('email', isEqualTo: user.email).get();
    if (querySnapshot.size > 0) {
      DocumentSnapshot doc = querySnapshot.docs[0];
      String documentId = doc.id;

      Map<String, dynamic> locationData = {
        'locationGeo': GeoPoint(latitude, longitude),
        'locationName': cityName,
      };

      await users
          .doc(documentId)
          .update(locationData); // Use update() to update the existing document
      // OR
      // await users.doc(documentId).set(locationData); // Use set() to overwrite the existing document
    }
  }

  Future<String> _getLocation() async {
    try {
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
      return "lat=" +
          position.latitude.toString() +
          "&lon=" +
          position.longitude.toString();
    } catch (e) {
      print(e);
      return "Error";
    }
  }

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 15),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Icon(
                        Icons.arrow_back,
                        size: 32,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              Text(
                'Update Predefined Location',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),

              Icon(Icons.perm_identity, size: 230),

              // welcome back, you've been missed!
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                child: Text(
                  'Update your location',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 70,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 80),
                child: SizedBox(
                  width: w * 0.8,
                  child: Text(
                    '\n\nClick the button below to get your location.',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  String latlon = await _getLocation();
                  String cityNameApi = await weatherApiClient.getCity(latlon);
                  setState(() {
                    latlon = latlon;
                    cityName = cityNameApi;
                    islocationsetempty = cityName
                        .isEmpty; // Update islocationsetempty based on the cityName
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: btnColor, // Orange background color
                ),
                child: Text(
                  'Click me to get location',
                  style: TextStyle(
                    color: Colors.white, // White font color
                  ),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 80),
                child: Visibility(
                  visible:
                      !islocationsetempty, // Show the container when islocationsetempty is false
                  child: Container(
                    width: w * 0.8,
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                        children: [
                          TextSpan(
                            text: '\n\nYour location will be set near: ',
                          ),
                          TextSpan(
                            text: cityName,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 150),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: CupertinoButton(
                        onPressed: () async {
                          String latlon = await _getLocation();
                          String latitudeString =
                              latlon.split('=')[1].split('&')[0];
                          String longitudeString = latlon.split('=')[2];
                          print(latitudeString);

                          double latitude =
                              double.tryParse(latitudeString) ?? 0.0;
                          double longitude =
                              double.tryParse(longitudeString) ?? 0.0;

                          await setLocationInFirebase(
                              cityName, latitude, longitude);

                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return BackdropFilter(
                                filter:
                                    ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                                child: CupertinoAlertDialog(
                                  title: Text(
                                    'Changes saved!',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  content: Text(
                                    'Your changes were saved. You can now go back.',
                                  ),
                                  actions: [
                                    CupertinoDialogAction(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                        Navigator.of(context).pop();
                                      },
                                      child: Text('OK'),
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                        color: Color(0xFFF2796B), // Orange background color
                        borderRadius: BorderRadius.circular(
                            10.0), // Adjust the radius as needed
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Save your new Location',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white, // White font color
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
