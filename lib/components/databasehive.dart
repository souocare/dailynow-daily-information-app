import 'package:hive/hive.dart';
import 'package:latlong2/latlong.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

class StationAdapter extends TypeAdapter<Map<LatLng, List<String>>> {
  @override
  final typeId = 0; // Unique identifier for the adapter

  @override
  Map<LatLng, List<String>> read(BinaryReader reader) {
    final count = reader.readByte(); // Read the number of map entries

    final stationMap = <LatLng, List<String>>{};

    for (var i = 0; i < count; i++) {
      final lat = reader.readDouble(); // Read latitude
      final lng = reader.readDouble(); // Read longitude

      final key = LatLng(lat, lng); // Create a LatLng object
      final station =
          reader.readList().cast<String>(); // Read and cast the list of strings

      stationMap[key] = station; // Add entry to the map
    }

    return stationMap;
  }

  @override
  void write(BinaryWriter writer, Map<LatLng, List<String>> stationMap) {
    writer.writeByte(stationMap.length); // Write the number of map entries

    stationMap.forEach((key, station) {
      writer.writeDouble(key.latitude); // Write latitude
      writer.writeDouble(key.longitude); // Write longitude

      writer.writeList(station); // Write the list of strings
    });
  }
}

class Station {
  @HiveField(0)
  final LatLng location;

  @HiveField(1)
  final List<String> data;

  Station(this.location, this.data);
}

Future<void> initializeHive() async {
  final appDocumentDir = await path_provider.getApplicationDocumentsDirectory();
  Hive.init(appDocumentDir.path);
  Hive.registerAdapter(StationAdapter());
}

bool stationDataExists() {
  final boxExists = Hive.isBoxOpen('stationBox');
  if (boxExists) {
    final box = Hive.box<Map<LatLng, List<String>>>('stationBox');
    return box.isNotEmpty;
  }
  return false;
}

void storeStationData() async {
  final box = await Hive.openBox<Station>('stationBox');

  for (final entry in _stationMap.entries) {
    final station = Station(entry.key, entry.value);
    box.add(station);
  }
}

final Map<LatLng, List<String>> _stationMap = {
  LatLng(38.73705770801078, -9.132125144343243): [
    'Alameda',
    "https://goo.gl/maps/GptrDPGad9cWDgoBA",
    ""
  ],
  LatLng(38.73491, -9.145): [
    'Saldanha',
    "https://goo.gl/maps/vSEyxDwRxG6gfibi7",
    "https://www.metrolisboa.pt/viajar/saldanha-linha-amarela/"
  ],
  LatLng(38.73373, -9.153510000000001): [
    'São Sebastião',
    "https://goo.gl/maps/iGo2UD9MYFeEBd7eA",
    ""
  ],
  LatLng(38.73373, -9.153510000000001): [
    'Encarnação',
    "https://goo.gl/maps/iGo2UD9MYFeEBd7eA",
    ""
  ],
  // Add more station mappings here
};
