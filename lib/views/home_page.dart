import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:dailynow_app/services/weatherapi_services.dart';
import 'package:dailynow_app/models/CurrentWeatherModel.dart';
import 'package:dailynow_app/services/newsapi_service.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart' as http;

final client = http.Client();
final weatherApiClient = WeatherApiClient(httpClient: client);

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color backgroundColor = Color.fromARGB(0, 255, 255, 255).withOpacity(0.5);
  String latlon_cityname = ''; //lat lisbon
  String cityname = "";

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

      try {
        final weather =
            await weatherApiClient.getCurrentWeather(latlon_cityname);
        String rgbR = weather.bckColorR;
        String rgbG = weather.bckColorG;
        String rgbB = weather.bckColorB;
        if (rgbR != null && rgbG != null && rgbB != null) {
          print("rgbR: " + rgbR);
          print("rgbG: " + rgbG);
          print("rgbB: " + rgbB);
          setState(() {
            backgroundColor = Color.fromARGB(
                    0, int.parse(rgbR), int.parse(rgbG), int.parse(rgbB))
                .withOpacity(0.5);
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
    getLocationFromFirebase();
  }

  final user = FirebaseAuth.instance.currentUser!;

  // sign user out method
  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: backgroundColor,
              child: Column(
                children: [
                  FutureBuilder<CurrentWeather>(
                    future: weatherApiClient.getCurrentWeather(latlon_cityname),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
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
                                      'Lisbon',
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
                                "It was not possible to get the data. Please try again later.",
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
              height: 5,
            ),
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
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Latest News",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold))
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        FutureBuilder<List<NewsItem>>(
                          future: getNews(),
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {
                              final news = snapshot.data!;
                              return Column(
                                children: [
                                  for (var newsline in news) ...[
                                    // Create your news widget here
                                    GestureDetector(
                                      onTap: () async {
                                        // Open the newsline.link URL in a web browser
                                        await launchUrl(
                                          Uri.parse(
                                            newsline.link,
                                          ),
                                        );
                                      },
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 70,
                                            width: w * 0.3,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: FutureBuilder(
                                              future: precacheImage(
                                                  NetworkImage(newsline
                                                      .enclosureUrlImage),
                                                  context),
                                              builder: (BuildContext context,
                                                  AsyncSnapshot<void>
                                                      snapshot) {
                                                if (snapshot.connectionState ==
                                                    ConnectionState.waiting) {
                                                  return Center(
                                                      child:
                                                          CircularProgressIndicator());
                                                } else if (snapshot
                                                            .connectionState ==
                                                        ConnectionState.done &&
                                                    snapshot.hasError) {
                                                  return Image.asset(
                                                    'assets/news/newsgeneral.jpg',
                                                    fit: BoxFit.cover,
                                                  );
                                                } else {
                                                  return FadeInImage(
                                                    placeholder: AssetImage(
                                                        'assets/news/newsgeneral.jpg'),
                                                    image: NetworkImage(newsline
                                                        .enclosureUrlImage),
                                                    fit: BoxFit.cover,
                                                  );
                                                }
                                              },
                                            ),
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width -
                                                170,
                                            child: Text(
                                              newsline.title,
                                              style: TextStyle(
                                                fontSize: 14,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Divider(
                                      height: 30,
                                      thickness: 2,
                                    ),
                                  ],
                                ],
                              );
                            } else if (snapshot.hasError) {
                              print(snapshot.error.toString());
                              return Center(
                                child: Column(children: [
                                  const SizedBox(height: 10),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Center(
                                    child: Text(
                                      "It was not possible to get the data. Please try again later.",
                                      style: TextStyle(
                                        color: Colors.black,
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
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
