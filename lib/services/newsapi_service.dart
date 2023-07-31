import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:http/http.dart' as http;
import 'package:xml/xml.dart';

class NewsItem {
  String title;
  String description;
  String enclosureUrlImage;
  String link;

  NewsItem(this.title, this.description, this.enclosureUrlImage, this.link);
}

Future<List<NewsItem>> getNews() async {
  // Fetch and parse the RSS feed
  final response = await http.get(Uri.parse(
      "https://rr.sapo.pt/rss/rssfeed.aspx?section=section_noticias"));
  final decodedBody = utf8.decode(response.bodyBytes);
  final document = XmlDocument.parse(decodedBody);
  final newsItems = document.findAllElements('item');

// Create a list to hold the news items
  List<NewsItem> newsList = [];

// Iterate through the news items and create NewsItem objects
  for (var item in newsItems) {
    final title = item.findElements('title').first.text;
    final description = item.findElements('description').first.text;
    String enclosureUrlImagetry = "";
    String enclosureUrlImagetryfinal = "";
    try {
      enclosureUrlImagetry =
          item.findElements('enclosure').first.getAttribute('url').toString();
    } catch (e) {
      enclosureUrlImagetry =
          "https://c1.wallpaperflare.com/preview/21/93/67/news-yellow-newspaper-3d.jpg";
    }
    if (enclosureUrlImagetry.endsWith('.jpg') ||
        enclosureUrlImagetry.endsWith('.jpeg') ||
        enclosureUrlImagetry.endsWith('.png')) {
      enclosureUrlImagetryfinal = enclosureUrlImagetry;
    } else {
      enclosureUrlImagetryfinal =
          "https://c1.wallpaperflare.com/preview/21/93/67/news-yellow-newspaper-3d.jpg";
    }
    final enclosureUrlImage = enclosureUrlImagetryfinal;
    final link = item.findElements('link').first.text;
    final newsItem = NewsItem(title, description, enclosureUrlImage, link);
    newsList.add(newsItem);
  }
  return newsList;
}

class JournalsFrontPagesService {
  static Map<String, String> dictjourn = {
    "correiomanha": "Correio da Manhã",
    "publico": "Público",
    "correiomanha2": "Correio da Manhã2",
    "publico2": "Público2",
    "diarionoticias": "Diario de Noticias",
    "jornalnoticias": "Jornal de Notícias",
    "record": "Record",
    "jogo": "O Jogo",
    "expresso": "Expresso",
    "jornalnegocios": "Jornal de Negócios",
  };

  static Future<Map<String, String>> getJournalsMap() async {
    Map<String, String> journalsmap = {};
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference journals = firestore.collection('journals');
    journalsmap[dictjourn["correiomanha"]!] =
        "https://imgs.vercapas.com/covers/correio-da-manha/2023/correio-da-manha-2023-05-12-f19e5fed.jpg";
    journalsmap[dictjourn["publico"]!] =
        "https://imgs.vercapas.com/covers/publico/publico-2023-05-12-4e0740.jpg";
    journalsmap[dictjourn["correiomanha2"]!] =
        "https://imgs.vercapas.com/covers/correio-da-manha/2023/correio-da-manha-2023-05-12-f19e5fed.jpg";
    journalsmap[dictjourn["publico2"]!] =
        "https://imgs.vercapas.com/covers/publico/publico-2023-05-12-4e0740.jpg";
    // journals
    //     .doc("PRFa2i0bgzLhxjS73HHx")
    //     .get()
    //     .then((DocumentSnapshot documentSnapshot) {
    //   if (documentSnapshot.exists) {
    //     Map<String, dynamic> journalsmapch =
    //         documentSnapshot.data() as Map<String, dynamic>;
    //     journalsmapch.forEach((key, value) {
    //       if (dictjourn.containsKey(key)) {
    //         //check if there is a key which is the value you grabbed
    //         journalsmap[dictjourn[key]!] = value;
    //       }
    //       ;
    //     });
    //     // Use the data variable to access the fields in the document
    //   } else {
    //     print('Document does not exist on the database');
    //   }
    // });

    // FirebaseFirestore firestore = FirebaseFirestore.instance;
    // CollectionReference journals = firestore.collection('journals');

    // // Get journals data from Firestore
    // QuerySnapshot<Map<String, dynamic>> querySnapshot = await journals.get();
    // List<QueryDocumentSnapshot<Map<String, dynamic>>> docs = querySnapshot.docs;

    // // Extract journal names and image URLs
    // docs.forEach((doc) {
    //   String journalName = dictjourn[doc.id] ?? "";
    //   String imageUrl = doc.data()['image_url'] ?? "";
    //   if (journalName.isNotEmpty && imageUrl.isNotEmpty) {
    //     journalsmap[journalName] = imageUrl;
    //   }
    // });

    return journalsmap;
  }
}
