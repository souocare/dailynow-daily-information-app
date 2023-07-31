import 'package:dailynow_app/services/newsapi_service.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:transparent_image/transparent_image.dart';

class NewsFrontPagesScreen extends StatefulWidget {
  @override
  State<NewsFrontPagesScreen> createState() => _NewsFrontPagesScreenState();
}

class _NewsFrontPagesScreenState extends State<NewsFrontPagesScreen>
    with TickerProviderStateMixin {
  Map<String, String> journalsmap = {};

  @override
  void initState() {
    super.initState();
    loadJournalsMap();
  }

  Future<void> loadJournalsMap() async {
    Map<String, String> map = await JournalsFrontPagesService.getJournalsMap();
    setState(() {
      journalsmap = map;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 240,
          childAspectRatio: 3 / 4,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        itemCount: journalsmap.length,
        itemBuilder: (BuildContext ctx, index) {
          final journalName = journalsmap.keys.toList()[index];
          final imageUrl = journalsmap.values.toList()[index];

          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                journalName,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (_) {
                      return Dialog(
                        child: SizedBox(
                          height: 380,
                          child: PhotoView(
                            backgroundDecoration:
                                BoxDecoration(color: Colors.white),
                            imageProvider: NetworkImage(imageUrl),
                            loadingBuilder: (BuildContext context,
                                ImageChunkEvent? loadingProgress) {
                              if (loadingProgress == null)
                                return const SizedBox();
                              return Center(
                                child: CircularProgressIndicator(
                                  value: loadingProgress.expectedTotalBytes !=
                                          null
                                      ? loadingProgress.cumulativeBytesLoaded /
                                          loadingProgress.expectedTotalBytes!
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
                    child: FadeInImage.memoryNetwork(
                      placeholder: kTransparentImage,
                      image: imageUrl,
                      fit: BoxFit.cover,
                      height: 200,
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
