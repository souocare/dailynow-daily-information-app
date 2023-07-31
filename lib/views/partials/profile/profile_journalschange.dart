import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileChangeJournalScreen extends StatefulWidget {
  @override
  State<ProfileChangeJournalScreen> createState() =>
      _ProfileChangeJournalScreenState();
}

class _ProfileChangeJournalScreenState
    extends State<ProfileChangeJournalScreen> {
  final user = FirebaseAuth.instance.currentUser!;

  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  List<String> _items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
    'Item 6',
    'Item 7',
    'Item 8',
    'Item 9',
    'Item 10',
    'Item 11',
    'Item 12'
  ];
  List<bool> _checkedItems = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  @override
  Widget build(BuildContext context) {
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
                'Update Favourite Journals',
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
                  'Please select the journals you want to see the front pages',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 16),
              SizedBox(
                height: 300, // Adjust the height as needed
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Container(
                    margin: EdgeInsets.all(16.0),
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      border: Border.all(color: Colors.black),
                    ),
                    child: Scrollbar(
                      isAlwaysShown: true, // Make the scrollbar always visible
                      thickness: 8.0, // Adjust the thickness as needed
                      radius:
                          Radius.circular(4.0), // Adjust the radius as needed
                      child: SingleChildScrollView(
                        child: Column(
                          children: _items
                              .asMap()
                              .map(
                                (index, item) => MapEntry(
                                  index,
                                  CheckboxListTile(
                                    controlAffinity:
                                        ListTileControlAffinity.leading,
                                    title: Text(item),
                                    value: _checkedItems[index],
                                    onChanged: (bool? value) {
                                      setState(() {
                                        _checkedItems[index] = value!;
                                      });
                                    },
                                  ),
                                ),
                              )
                              .values
                              .toList(),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () async {
                          // String latlon = await _getLocation();
                          // String latitudeString = latlon.split('=')[1].split('&')[0];
                          // String longitudeString = latlon.split('=')[2];
                          // print(latitudeString);

                          // double latitude = double.tryParse(latitudeString) ?? 0.0;
                          // double longitude = double.tryParse(longitudeString) ?? 0.0;

                          // await setLocationInFirebase(cityName, latitude, longitude);

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
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              Color(0xFFF2796B), // Orange background color
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                10.0), // Adjust the radius as needed
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Save journals',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white, // White font color
                            ),
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
