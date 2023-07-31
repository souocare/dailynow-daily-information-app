import 'package:cloud_firestore/cloud_firestore.dart';

class UserInfoData {
  final String email;
  String latlon;
  String cityname;
  List<String> journals;

  UserInfoData(
      {required this.email,
      required this.latlon,
      required this.cityname,
      required this.journals});

  Future<void> getLocationFromFirebase() async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference users = firestore.collection('users');

    QuerySnapshot querySnapshot =
        await users.where('email', isEqualTo: this.email).get();
    if (querySnapshot.size > 0) {
      DocumentSnapshot doc = querySnapshot.docs[0];
      Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
      GeoPoint locationGeo = data['locationGeo'];
      String lat = locationGeo.latitude.toString();
      String lon = locationGeo.longitude.toString();
      String citynamedb = data['locationName'];
      this.latlon = "lat=$lat&lon=$lon";
      this.cityname = citynamedb;
    }
  }
}
