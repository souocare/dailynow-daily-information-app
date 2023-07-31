import 'dart:convert';
import 'package:dailynow_app/models/CurrentWeatherModel.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';

class WeatherApiClient {
  final baseUrl = 'https://api.openweathermap.org/data/2.5';
  final http.Client httpClient;
  final String apiKey = dotenv.env['OPENWEATHERAPI']!;

  WeatherApiClient({
    required this.httpClient,
  });

  Future<CurrentWeather> getCurrentWeather(String latlon) async {
    //final url = '$baseUrl/weather?q=$cityName&appid=$apiKey&units=metric';
    final url = '$baseUrl/weather?$latlon&appid=$apiKey&units=metric';
    print(url);
    final response = await httpClient.get(Uri.parse(url));

    if (response.statusCode != 200) {
      throw Exception('Failed to load weather data');
    }
    final Map<String, dynamic> jsonWeather = jsonDecode(response.body);
    print("jsonWeather");
    print(jsonWeather);
    return CurrentWeather.fromJson(jsonWeather);
  }

  Future<List<CurrentWeather>> getHourlyWeather(String latlon) async {
    //final url = '$baseUrl/weather?q=$cityName&appid=$apiKey&units=metric';
    final url = '$baseUrl/forecast?$latlon&appid=$apiKey&units=metric&cnt=20';
    final response = await httpClient.get(Uri.parse(url));

    if (response.statusCode != 200) {
      throw Exception('Failed to load weather data');
    }
    List<CurrentWeather> weatherlist = [];
    CurrentWeather nowweather = await getCurrentWeather(latlon);
    weatherlist.add(nowweather);
    final Map<String, dynamic> jsonWeather = jsonDecode(response.body);
    List<dynamic> weatherListjson = jsonWeather['list'];
    for (var jsonlistitem in weatherListjson) {
      CurrentWeather currentweather =
          CurrentWeather.fromJsonForecast(jsonlistitem);
      weatherlist.add(currentweather);
    }
    return weatherlist;
  }

  Future<List<CurrentWeather>> getDailyWeather(String latlon) async {
    final url = '$baseUrl/forecast?$latlon&appid=$apiKey&units=metric&cnt=20';
    final response = await httpClient.get(Uri.parse(url));

    if (response.statusCode != 200) {
      throw Exception('Failed to load weather data');
    }
    List<CurrentWeather> weatherlist = [];
    final Map<String, dynamic> jsonWeather = jsonDecode(response.body);
    List<dynamic> weatherListjson = jsonWeather['list'];
    for (var jsonlistitem in weatherListjson) {
      CurrentWeather currentweather =
          CurrentWeather.fromJsonForecast(jsonlistitem);
      if (currentweather.dateTime.hour == 12) {
        weatherlist.add(currentweather);
      }
    }
    return weatherlist;
  }

  Future<String> getCity(String latlon) async {
    if (latlon == "Error") {
      return "Error fetching the current location. Please check your location permissions.";
    } else {
      try {
        CurrentWeather currentWeather = await getCurrentWeather(latlon);
        String cityName = currentWeather.cityName;
        return cityName;
      } catch (error) {
        return "Error retrieving city";
      }
    }
  }

  // Future<CurrentWeather> getHourlyWeather(String cityName) async {
  //   final url =
  //       '$baseUrl/forecast?lat=38.7167&lon=-9.1333&appid=$apiKey&units=metric';
  //   final response = await httpClient.get(Uri.parse(url));
  //   print(url);
  //   print(response.body);

  //   if (response.statusCode != 200) {
  //     throw Exception('Failed to load weather data');
  //   }
  //   final Map<String, dynamic> jsonWeather = jsonDecode(response.body);
  //   return CurrentWeather.fromJson(jsonWeather);
  // }

  // Future<CurrentWeather> getTenDayWeather(String cityName) async {
  //   final url =
  //       '$baseUrl/forecast/daily?lat=38.7167&lon=-9.1333&appid=$apiKey&units=metric&cnt=10';
  //   final response = await httpClient.get(Uri.parse(url));
  //   print(url);
  //   print(response.body);

  //   if (response.statusCode != 200) {
  //     throw Exception('Failed to load weather data');
  //   }
  //   final Map<String, dynamic> jsonWeather = jsonDecode(response.body);
  //   return CurrentWeather.fromJson(jsonWeather);
  // }
}
