import 'package:dailynow_app/views/partials/metro/linesstatus_generalinfo.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class MetroGeneralInfoScreen extends StatefulWidget {
  @override
  State<MetroGeneralInfoScreen> createState() => _MetroGeneralInfoScreenState();
}

class _MetroGeneralInfoScreenState extends State<MetroGeneralInfoScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
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
                  Container(child: LineStatusScreen()),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Metro Map',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'If you just want to see the map of the metro, scroll below and click on the image to zoom. If you want to see the location of the stations, click on “Interactive Map”',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12.0,
                      fontWeight: FontWeight.normal,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigator.pushReplacement(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) => ImageView(
                      //             productImages: imgList,
                      //           )),
                      // );
                      // CustomNetworkImage(imageUrl: imageUrl);
                      showDialog(
                        context: context,
                        builder: (_) {
                          return Dialog(
                            child: SizedBox(
                              height: 350,
                              child: PhotoView(
                                backgroundDecoration:
                                    BoxDecoration(color: Colors.white),
                                imageProvider: AssetImage(
                                    'assets/metro/Lisbonmetromap.jpg'),
                                loadingBuilder: (BuildContext context,
                                    ImageChunkEvent? loadingProgress) {
                                  if (loadingProgress == null)
                                    return const SizedBox();
                                  return Center(
                                    child: CircularProgressIndicator(
                                      value:
                                          loadingProgress.expectedTotalBytes !=
                                                  null
                                              ? loadingProgress
                                                      .cumulativeBytesLoaded /
                                                  loadingProgress
                                                      .expectedTotalBytes!
                                              : null,
                                    ),
                                  );
                                },
                                initialScale:
                                    PhotoViewComputedScale.contained * 1.25,
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        child: Image.asset(
                          'assets/metro/Lisbonmetromap.jpg',
                          height: 290,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
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
