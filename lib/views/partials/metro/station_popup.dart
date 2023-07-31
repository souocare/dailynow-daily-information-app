import 'package:dailynow_app/models/map_stations.dart';
import 'package:dailynow_app/views/partials/metro/station_popup_controller.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher_string.dart';

class StationPopup extends StatefulWidget {
  final Marker markerstation;

  const StationPopup(this.markerstation, {Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _StationPopupState();
}

class _StationPopupState extends State<StationPopup> {
  final List<IconData> _icons = [
    Icons.star_border,
    Icons.star_half,
    Icons.star
  ];
  int _currentIcon = 0;

  @override
  Widget build(BuildContext context) {
    StationPopUpController _controller = Get.put(StationPopUpController());
    var stationsAll = _controller.stationMapList;
    final station = stationsAll.firstWhere(
      (mapStation) =>
          mapStation.lat == widget.markerstation.point.latitude &&
          mapStation.lng == widget.markerstation.point.longitude,
      orElse: () => MapStations(
          lat: 00.0000,
          lng: 00.0000,
          stationName: 'ERROR',
          googleAdr: "ERROR",
          metroAdr: "ERROR"),
    );

    // final googlemapslink = _stationMap[widget.markerstation.point]![1];
    // final metrolink = _stationMap[widget.markerstation.point]![2];
    // print(metrolink);
    // print(googlemapslink);
    return Card(
      child: InkWell(
        onTap: () => setState(() {
          _currentIcon = (_currentIcon + 1) % _icons.length;
        }),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            _cardDescription(
                context,
                station.stationName ?? ''.toString(),
                station.googleAdr ?? ''.toString(),
                station.metroAdr.toString()),
          ],
        ),
      ),
    );
  }

  Widget _cardDescription(BuildContext context, String stationNamestation,
      String googlemapslink, String metrolink) {
    if (stationNamestation == "") {
      return Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          constraints: const BoxConstraints(minWidth: 100, maxWidth: 200),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                "Your Location",
                overflow: TextOverflow.fade,
                softWrap: false,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14.0,
                ),
              ),
              const Padding(padding: EdgeInsets.symmetric(vertical: 4.0)),
              Text(
                'Position: ${widget.markerstation.point.latitude}, ${widget.markerstation.point.longitude}',
                style: const TextStyle(fontSize: 12.0),
              ),
            ],
          ),
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          constraints: const BoxConstraints(minWidth: 100, maxWidth: 200),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                "Station: " + stationNamestation,
                overflow: TextOverflow.fade,
                softWrap: false,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14.0,
                ),
              ),
              const Padding(padding: EdgeInsets.symmetric(vertical: 4.0)),
              Text(
                'Position: ${widget.markerstation.point.latitude}, ${widget.markerstation.point.longitude}',
                style: const TextStyle(fontSize: 12.0),
              ),
              SizedBox(height: 8),
              RichText(
                text: TextSpan(
                  text: 'Location on Google Maps',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.blue,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      launchUrlString(googlemapslink);
                    },
                ),
              ),
              SizedBox(height: 8),
              RichText(
                text: TextSpan(
                  text: 'Info about the station',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.blue,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      launchUrlString(metrolink);
                    },
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
}
