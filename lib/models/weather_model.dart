class WeatherModel {
  final String cityName;
  final DateTime date;
  final String? image;
  final double Temp;
  final double maxTemp;
  final double minTemp;
  final String weatherCondition;

  const WeatherModel({
    required this.cityName,
    required this.date,
    this.image,
    required this.Temp,
    required this.maxTemp,
    required this.minTemp,
    required this.weatherCondition,
  });

  factory WeatherModel.fromJson(dynamic json) {
    return WeatherModel(
      image: json['forecast']['forecastday'][0]['day']['condition']['icon'],
      cityName: json['location']['name'],
      date: DateTime.parse(json['current']['last_updated']),
      Temp: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
      maxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
      minTemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
      weatherCondition: json['forecast']['forecastday'][0]['day']['condition']
          ['text'],
    );
  }
}


//----------------------------------------------------------------------------------------

  //  cityName: json['location']['name'],
  //     date: DateTime.parse(
  //       json['current']['last_updated'].toString(),
  //     ),
  //     image: json['forecast']['forecastday'][0]['day']['condition']['icon'],
  //     Temp: (json['forecast']['forecastday'][0]['day']['avgtemp_c'] as num)
  //         .toDouble(),
  //     maxTemp: (json['forecast']['forecastday'][0]['day']['maxtemp_c'] as num)
  //         .toDouble(),
  //     minTemp: (json['forecast']['forecastday'][0]['day']['mintemp_c'] as num)
  //         .toDouble(),
  //     weatherCondition: json['forecast']['forecastday'][0]['day']['condition']
  //         ['text'],