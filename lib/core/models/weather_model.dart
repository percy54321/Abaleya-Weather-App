class Weather {
  final String cityName;
  final double temperature;
  final String description;
  final String iconUrl;

  Weather({
    required this.cityName,
    required this.temperature,
    required this.description,
    required this.iconUrl,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      cityName: json['location']['name'],
      temperature: json['current']['temp_c'],
      description: json['current']['condition']['text'],
      iconUrl: "https:${json['current']['condition']['icon']}",
    );
  }
}
