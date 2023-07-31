import 'package:dailynow_app/services/newsapi_service.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class NewsLatestNewsScreen extends StatelessWidget {
  String _selectedOption = 'All';
  List<String> _options = ["All"];

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
                  height: 15,
                ),
                Container(
                  height: 30,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: DropdownButton<String>(
                        underline: Container(
                          height: 0,
                          color: Colors.white,
                        ),
                        dropdownColor: Colors.white,
                        hint: Text('Choose the newspaper'),
                        value: _selectedOption,
                        items: _options.map((String newspaper) {
                          return DropdownMenuItem<String>(
                            value: newspaper,
                            child: Text(newspaper),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          //_selectedOption = newValue!;
                        },
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                FutureBuilder<List<NewsItem>>(
                  future: getNews(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      final news = snapshot.data!;
                      print(news.toString());
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
                                    width:
                                        MediaQuery.of(context).size.width * 0.3,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: FutureBuilder(
                                      future: precacheImage(
                                          NetworkImage(
                                              newsline.enclosureUrlImage),
                                          context),
                                      builder: (BuildContext context,
                                          AsyncSnapshot<void> snapshot) {
                                        if (snapshot.connectionState ==
                                            ConnectionState.waiting) {
                                          return CircularProgressIndicator();
                                        } else if (snapshot.connectionState ==
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
                                            image: NetworkImage(
                                                newsline.enclosureUrlImage),
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
                                    width:
                                        MediaQuery.of(context).size.width - 170,
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
    );
  }
}
