class CurrentWeather {
  final String cityName;
  final double temperature;
  final String description;
  final DateTime dateTime;
  final String icon;
  final String bckColorR;
  final String bckColorG;
  final String bckColorB;

  static const Map<String, List<String>> weatherIcons = {
    'clear sky': ['assets/weather/sunny.png', "232", "144", "41"],
    'few clouds': ['assets/weather/sunny.png', "232", "144", "41"],
    'scattered clouds': ['assets/weather/cloudy.png', "102", "124", "153"],
    'broken clouds': ['assets/weather/darkclouds.png', "127", "127", "127"],
    'overcast clouds': ['assets/weather/darkclouds.png', "127", "127", "127"],
    'light rain': ['assets/weather/lightrain.png', "122", "168", "198"],
    'shower rain': ['assets/weather/lightrain.png', "122", "168", "198"],
    'rain': ['assets/weather/heavyrain.png', "59", "59", "59"],
    'thunderstorm': ['assets/weather/lightning.png', "66", "66", "66"],
    'snow': ['assets/weather/snow.png', "150", "185", "237"],
    'mist': ['assets/weather/fog.png', "155", "152", "152"],
    // Add more mappings as needed
  };

  CurrentWeather({
    required this.cityName,
    required this.temperature,
    required this.description,
    required this.dateTime,
    required this.icon,
    required this.bckColorR,
    required this.bckColorG,
    required this.bckColorB,
  });

  factory CurrentWeather.fromJson(Map<String, dynamic> json) {
    final mainJson = json['main'] as Map<String, dynamic>;
    final weatherJson =
        (json['weather'] as List<dynamic>)[0] as Map<String, dynamic>;

    final description = weatherJson['description'] as String;
    final iconColor = weatherIcons[description] ??
        [
          'assets/weather/blank.png',
          "255",
          "255",
          "255",
        ]; // Default to blank icon and color if no mapping is found

    return CurrentWeather(
      cityName: json['name'],
      temperature: mainJson['temp'].toDouble(),
      description: description,
      dateTime: DateTime.fromMillisecondsSinceEpoch(json['dt'] * 1000),
      icon: iconColor[0],
      bckColorR: iconColor[1],
      bckColorG: iconColor[2],
      bckColorB: iconColor[3],
    );
  }

  factory CurrentWeather.fromJsonForecast(Map<String, dynamic> json) {
    final mainJson = json['main'] as Map<String, dynamic>;
    final weatherJson =
        (json['weather'] as List<dynamic>)[0] as Map<String, dynamic>;

    final description = weatherJson['description'] as String;
    final iconColor = weatherIcons[description] ??
        [
          'assets/weather/blank.png',
          "255",
          "255",
          "255",
        ]; // Default to blank icon and color if no mapping is found
    if (iconColor[0] == "assets/weather/blank.png") {
      print("drenas fddaaaaas");
      print(description);
    }

    return CurrentWeather(
      cityName: '',
      temperature: mainJson['temp'].toDouble(),
      description: description,
      dateTime: DateTime.parse(json['dt_txt']),
      icon: iconColor[0],
      bckColorR: iconColor[1],
      bckColorG: iconColor[2],
      bckColorB: iconColor[3],
    );
  }
}
