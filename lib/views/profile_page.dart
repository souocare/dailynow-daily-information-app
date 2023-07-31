import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dailynow_app/components/textinputarea_profile.dart';
import 'package:dailynow_app/utils/customNavbar.dart';
import 'package:dailynow_app/views/partials/profile/profile_journalschange.dart';
import 'package:dailynow_app/views/partials/profile/profile_locationchange.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final user = FirebaseAuth.instance.currentUser!;
  final emailController = TextEditingController();
  final nomeontroller = TextEditingController();
  String email = "";
  String nome = "";

  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  var controller = Get.put(MyController());

  @override
  void initState() {
    super.initState();
    fetchDataUser();
  }

  void fetchDataUser() async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference users = firestore.collection('users');

    QuerySnapshot querySnapshot =
        await users.where('email', isEqualTo: user.email).get();
    if (querySnapshot.size > 0) {
      DocumentSnapshot doc = querySnapshot.docs[0];
      Map<String, dynamic> data = doc.data() as Map<String, dynamic>;

      // Use the nameValue variable as needed in your widget
      setState(() {
        email = user.email.toString();
        emailController.text = email;
        nome = data.containsKey('name') ? data['name'] : '';
        nomeontroller.text = nome;
        // nomeontroller.text = nome;
        // Update the state of your widget with the obtained data
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 15),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 16.0),
                      child: Text(
                        'Profile',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.perm_identity, // Replace with the desired icon
                      size: 22,
                      color: Colors.black,
                    ),
                  ],
                ),
                Icon(Icons.perm_identity, size: 210),
                Center(
                  child: Text(
                    "Do you need some help,",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    nome.isEmpty ? email : nome + "?",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height:
                      50, // Set the height of the SizedBox to 40 logical pixels
                  child: TextInputAreaProfile(
                    controller: nomeontroller,
                    hintText: 'Name',
                    obscureText: false,
                    initialText: nome,
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height:
                      50, // Set the height of the SizedBox to 40 logical pixels
                  child: TextInputAreaProfile(
                    controller: emailController,
                    hintText: 'Email',
                    obscureText: false,
                    initialText: email,
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/profile/password.png",
                          width: 30,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Change Password',
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios, color: Colors.black),
                      ],
                    ),
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) => ProfileChangeJournalScreen()),
                      // );
                    },
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/profile/location.png",
                          width: 30,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Change Main Location',
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios, color: Colors.black),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                ProfileChangeLocationScreen()),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/profile/news.png",
                          width: 30,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Change Favourite Journals',
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios, color: Colors.black),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProfileChangeJournalScreen()),
                      );
                    },
                  ),
                ),
                SizedBox(height: 45),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () async {
                            signUserOut();
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
                              'Logout',
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
      ),
    );
  }
}
