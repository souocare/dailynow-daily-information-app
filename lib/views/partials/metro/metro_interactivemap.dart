import 'dart:async';

import 'package:dailynow_app/views/partials/metro/station_popup_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:flutter_map_marker_popup/flutter_map_marker_popup.dart';
import 'package:url_launcher/url_launcher.dart';

import 'station_popup.dart'; // Only import if required functionality is not exposed by default

class MetroInteractiveMapScreen extends StatefulWidget {
  @override
  State<MetroInteractiveMapScreen> createState() =>
      _MetroInteractiveMapScreenState();
}

class _MetroInteractiveMapScreenState extends State<MetroInteractiveMapScreen> {
  late final List<Marker> _markers;
  final controller = MapController();
  final PopupController _popupLayerController = PopupController();
  LatLng _currentLocation = LatLng(0, 0);
  late Timer _locationTimer;

  Future<void> _getLocation() async {
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
      setState(() {
        _currentLocation = LatLng(position.latitude, position.longitude);
        _markers.removeLast();
        _markers.add(
          Marker(
            point: LatLng(position.latitude, position.longitude),
            width: 40,
            height: 40,
            builder: (_) => const Icon(Icons.person, size: 40),
            anchorPos: AnchorPos.align(AnchorAlign.top),
            rotateAlignment: AnchorAlign.top.rotationAlignment,
          ),
        );
      });
    } catch (e) {
      _currentLocation = LatLng(38.73691, -9.13388);
    }
  }

  @override
  void initState() {
    super.initState();
    var markersstations = Get.put(StationPopUpController()).stationMapList;
    _markers = markersstations.map((station) {
      return Marker(
        point: LatLng(
            station.lat?.toDouble() ?? 0.00, station.lng?.toDouble() ?? 0.0),
        width: 40,
        height: 40,
        builder: (_) => const Icon(Icons.location_on, size: 40),
        anchorPos: AnchorPos.align(AnchorAlign.top),
        rotateAlignment: AnchorAlign.top.rotationAlignment,
      );
    }).toList();

    // _markers = [LatLng(38.73736907362792, -9.134059630913418)]
    //     .map(
    //       (markerPosition) => Marker(
    //         point: markerPosition,
    //         width: 40,
    //         height: 40,
    //         builder: (_) => const Icon(Icons.location_on, size: 40),
    //         anchorPos: AnchorPos.align(AnchorAlign.top),
    //         rotateAlignment: AnchorAlign.top.rotationAlignment,
    //       ),
    //     )
    //     .toList();
    _getLocation();
    _markers.add(
      Marker(
        point: LatLng(_currentLocation.latitude, _currentLocation.longitude),
        width: 40,
        height: 40,
        builder: (_) => const Icon(Icons.person, size: 40),
        anchorPos: AnchorPos.align(AnchorAlign.top),
        rotateAlignment: AnchorAlign.top.rotationAlignment,
      ),
    );
    _locationTimer = Timer.periodic(Duration(seconds: 5), (_) {
      _getLocation();
    });
  }

  void _gotoDefault() {
    controller.move(LatLng(38.7599, -9.1590), 1.5);
    setState(() {});
  }

  @override
  void dispose() {
    // Cancel the timer when the screen is disposed
    _locationTimer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _getLocation();
    return FlutterMap(
      options: MapOptions(
        center: LatLng(38.72835881850109, -9.134422406902166),
        zoom: 13,
      ),
      nonRotatedChildren: [
        RichAttributionWidget(
          attributions: [
            TextSourceAttribution(
              'OpenStreetMap contributors',
              onTap: () =>
                  launchUrl(Uri.parse('https://openstreetmap.org/copyright')),
            ),
          ],
        ),
      ],
      children: [
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          userAgentPackageName: 'com.example.app',
        ),
        MarkerLayer(
          markers: _markers,
        ),
        PolylineLayer(
          polylines: [
            Polyline(
              points: [
                LatLng(38.7372782, -9.1339229),
                LatLng(38.7363317, -9.1405948),
                LatLng(38.7353609, -9.1451868),
                LatLng(38.7372782, -9.1339229),
                LatLng(38.7374578, -9.13092),
                LatLng(38.73753, -9.12796),
                LatLng(38.73811, -9.12618),
                LatLng(38.73928, -9.12416),
                LatLng(38.73989, -9.12343),
                LatLng(38.74115, -9.12145),
                LatLng(38.74149, -9.12103),
                LatLng(38.74192, -9.12066),
                LatLng(38.74253, -9.12028),
                LatLng(38.74384, -9.11985),
                LatLng(38.7453808, -9.1196321),
                LatLng(38.7467455, -9.1191183),
                LatLng(38.7477026, -9.1185621),
                LatLng(38.7483584, -9.1172333),
                LatLng(38.749188, -9.1159866),
                LatLng(38.7498598, -9.1150825),
                LatLng(38.7504928, -9.1146996),
                LatLng(38.7511716, -9.1142064),
                LatLng(38.7519537, -9.1137146),
                LatLng(38.75368, -9.11363),
                LatLng(38.75666, -9.11431),
                LatLng(38.75769, -9.11431),
                LatLng(38.75863, -9.11397),
                LatLng(38.7594, -9.11354),
                LatLng(38.7599, -9.11285),
                LatLng(38.7603, -9.11217),
                LatLng(38.761245, -9.108224),
                LatLng(38.761613, -9.106894),
                LatLng(38.762015, -9.105906),
                LatLng(38.762483, -9.105005),
                LatLng(38.76311, -9.10425),
                LatLng(38.764257, -9.103589),
                LatLng(38.76516, -9.102859),
                LatLng(38.765997, -9.102087),
                LatLng(38.766632, -9.101357),
                LatLng(38.76721, -9.10057),
              ],
              color: Colors.red,
              strokeWidth: 3,
            ),
            Polyline(
              points: [
                LatLng(38.70615, -9.14509),
                LatLng(38.70652, -9.14317),
                LatLng(38.707444, -9.1418433),
                LatLng(38.7085259, -9.1411634),
                LatLng(38.7097486, -9.1408471),
                LatLng(38.7108232, -9.1404504),
                LatLng(38.7118093, -9.1398006),
                LatLng(38.71315, -9.13905),
                LatLng(38.71374, -9.13873),
                LatLng(38.71468, -9.138),
                LatLng(38.71572, -9.13637),
                LatLng(38.71645, -9.13586),
                LatLng(38.71716, -9.13559),
                LatLng(38.7227, -9.13516),
                LatLng(38.73707, -9.13387),
                LatLng(38.74226, -9.13422),
                LatLng(38.74303, -9.13478),
                LatLng(38.74387, -9.13569),
                LatLng(38.74501, -9.13723),
                LatLng(38.74641, -9.13946),
                LatLng(38.74779, -9.14084),
                LatLng(38.74906, -9.14169),
                LatLng(38.75358, -9.14392),
                LatLng(38.76017, -9.14942),
                LatLng(38.76084, -9.15023),
                LatLng(38.76134, -9.15122),
                LatLng(38.76171, -9.15221),
                LatLng(38.76183, -9.15319),
                LatLng(38.761768, -9.153661),
                LatLng(38.761613, -9.154068),
                LatLng(38.761467, -9.15439),
                LatLng(38.760793, -9.155908),
                LatLng(38.76055, -9.15654),
                LatLng(38.75922, -9.16039),
                LatLng(38.75912, -9.16077),
                LatLng(38.75906, -9.1617),
                LatLng(38.75915, -9.16234),
                LatLng(38.75961, -9.16435),
                LatLng(38.75968, -9.1649),
                LatLng(38.75975, -9.16681),
              ],
              color: Colors.green,
              strokeWidth: 3,
            ),
            Polyline(
              points: [
                LatLng(38.7200974, -9.154165),
                LatLng(38.7214706, -9.1522984),
                LatLng(38.7226424, -9.1515259),
                LatLng(38.723789, -9.150496),
                LatLng(38.7248521, -9.1500453),
                LatLng(38.7258984, -9.1496159),
                LatLng(38.7272296, -9.1486934),
                LatLng(38.728962, -9.147706),
                LatLng(38.7302008, -9.1470835),
                LatLng(38.7308963, -9.1466952),
                LatLng(38.73341, -9.14564),
                LatLng(38.73513, -9.14519),
                LatLng(38.74176, -9.14671),
                LatLng(38.7481071, -9.1483638),
                LatLng(38.7486941, -9.1491213),
                LatLng(38.7490271, -9.14998),
                LatLng(38.74943, -9.15144),
                LatLng(38.75041, -9.15622),
                LatLng(38.75095, -9.15736),
                LatLng(38.7516159, -9.1589217),
                LatLng(38.75281, -9.15998),
                LatLng(38.75411, -9.16139),
                LatLng(38.7551, -9.16201),
                LatLng(38.7562, -9.16238),
                LatLng(38.75727, -9.16236),
                LatLng(38.75796, -9.16229),
                LatLng(38.75855, -9.16216),
                LatLng(38.75898, -9.16196),
                LatLng(38.75918, -9.16178),
                LatLng(38.75946, -9.16135),
                LatLng(38.75963, -9.16072),
                LatLng(38.75988, -9.15921),
                LatLng(38.76004, -9.15861),
                LatLng(38.76083, -9.15632),
                LatLng(38.76116, -9.15578),
                LatLng(38.76168, -9.15522),
                LatLng(38.76217, -9.15499),
                LatLng(38.76266, -9.15487),
                LatLng(38.76449, -9.15491),
                LatLng(38.76569, -9.15513),
                LatLng(38.76663, -9.15543),
                LatLng(38.76736, -9.15574),
                LatLng(38.77074, -9.1589),
                LatLng(38.77282, -9.15971),
                LatLng(38.77947, -9.16005),
                LatLng(38.78018, -9.16068),
                LatLng(38.781, -9.16221),
                LatLng(38.78334, -9.17008),
                LatLng(38.78382, -9.17088),
                LatLng(38.78447, -9.17134),
                LatLng(38.78587, -9.17198),
                LatLng(38.78684, -9.17232),
                LatLng(38.78734, -9.17238),
                LatLng(38.78786, -9.17228),
                LatLng(38.78823, -9.17211),
                LatLng(38.7887, -9.17176),
                LatLng(38.78961, -9.17095),
                LatLng(38.79006, -9.1707),
                LatLng(38.79053, -9.1706),
                LatLng(38.791, -9.17061),
                LatLng(38.79154, -9.17078),
                LatLng(38.79188, -9.171),
                LatLng(38.79214, -9.17126),
                LatLng(38.79313, -9.17277),
              ],
              color: Colors.yellow,
              strokeWidth: 3,
            ),
            Polyline(
              points: [
                LatLng(38.7140535, -9.122386),
                LatLng(38.711233, -9.125798),
                LatLng(38.708821, -9.128759),
                LatLng(38.708001, -9.130604),
                LatLng(38.707231, -9.133201),
                LatLng(38.707398, -9.135261),
                LatLng(38.7077496, -9.1366338),
                LatLng(38.7086877, -9.1385653),
                LatLng(38.7102567, -9.1399168),
                LatLng(38.7108232, -9.1404504),
                LatLng(38.7111714, -9.1404777),
                LatLng(38.71518, -9.14165),
                LatLng(38.7203696, -9.1459462),
                LatLng(38.72466, -9.14976),
                LatLng(38.72559, -9.15019),
                LatLng(38.7265, -9.15019),
                LatLng(38.7277, -9.15002),
                LatLng(38.72874, -9.14998),
                LatLng(38.72978, -9.15023),
                LatLng(38.7351013, -9.1535859),
                LatLng(38.7358915, -9.1550652),
                LatLng(38.73828, -9.1598),
                LatLng(38.73915, -9.16315),
                LatLng(38.74039, -9.16607),
                LatLng(38.74216, -9.16886),
                LatLng(38.74273, -9.16933),
                LatLng(38.74692, -9.17079),
                LatLng(38.7482884, -9.1717544),
                LatLng(38.7486918, -9.17246),
                LatLng(38.74926, -9.17345),
                LatLng(38.74949, -9.17624),
                LatLng(38.74966, -9.17993),
                LatLng(38.75006, -9.18311),
                LatLng(38.7504, -9.18487),
                LatLng(38.75083, -9.18667),
                LatLng(38.7515167, -9.1877413),
                LatLng(38.7526237, -9.1884036),
                LatLng(38.75876, -9.19272),
                LatLng(38.7599, -9.19371),
                LatLng(38.76121, -9.19538),
                LatLng(38.7622746, -9.19697),
                LatLng(38.76208, -9.19911),
                LatLng(38.76147, -9.20216),
                LatLng(38.76057, -9.20517),
                LatLng(38.7583448, -9.2187481),
              ],
              color: Colors.blue,
              strokeWidth: 3,
            ),
          ],
        ),
        PopupMarkerLayer(
          options: PopupMarkerLayerOptions(
            popupController: _popupLayerController,
            markers: _markers,
            popupDisplayOptions: PopupDisplayOptions(
                builder: (BuildContext context, Marker marker) =>
                    StationPopup(marker)),
          ),
        ),
      ],
    );
  }
}
