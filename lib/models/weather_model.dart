
class WeatherModel {
  final String cityName;
  final DateTime lastUpdated;
  final String dateToday;
  final String dateTomorrow;
  final String dateAfterTomorrow;
  final String dateAfterAfterTomorrow;
  final double maxTempToday;
  final double minTempToday;
  final double maxTempTomorrow;
  final double minTempTomorrow;
  final double maxTempAfterTomorrow;
  final double minTempAfterTomorrow;
  final double maxTempAfterAfterTomorrow;
  final double minTempAfterAfterTomorrow;
  final String imgToday;
  final String imgTomorrow;
  final String imgAfterTomorrow;
  final String imgAfterAfterTomorrow;
  
  WeatherModel({
    required this.cityName,
    required this.lastUpdated,
    required this.dateToday,
    required this.dateTomorrow,
    required this.dateAfterTomorrow,
    required this.dateAfterAfterTomorrow,
    required this.maxTempToday,
    required this.minTempToday,
    required this.maxTempTomorrow,
    required this.minTempTomorrow,
    required this.maxTempAfterTomorrow,
    required this.minTempAfterTomorrow,
    required this.maxTempAfterAfterTomorrow,
    required this.minTempAfterAfterTomorrow,
    required this.imgToday,
    required this.imgTomorrow,
    required this.imgAfterTomorrow,
    required this.imgAfterAfterTomorrow,
    
  });

  factory WeatherModel.fromJson(json) {
    return WeatherModel(
      cityName: json['location']['name'],
      lastUpdated: DateTime.parse(json['current']['last_updated']),
      dateToday: json['forecast']['forecastday'][0]['date'],
      maxTempToday: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
      minTempToday: json['forecast']['forecastday'][0]['day']['mintemp_c'],
      imgToday: json['forecast']['forecastday'][0]['day']['condition']['icon'],
     
      dateTomorrow: json['forecast']['forecastday'][1]['date'],
      maxTempTomorrow: json['forecast']['forecastday'][1]['day']['maxtemp_c'],
      minTempTomorrow: json['forecast']['forecastday'][1]['day']['mintemp_c'],
      imgTomorrow: json['forecast']['forecastday'][1]['day']['condition'] ['icon'],

      dateAfterTomorrow: json['forecast']['forecastday'][2]['date'],
      maxTempAfterTomorrow: json['forecast']['forecastday'][2]['day']['maxtemp_c'],
      minTempAfterTomorrow: json['forecast']['forecastday'][2]['day']['mintemp_c'],
      imgAfterTomorrow: json['forecast']['forecastday'][2]['day']['condition']['icon'],

      dateAfterAfterTomorrow: json['forecast']['forecastday'][3]['date'],
      maxTempAfterAfterTomorrow: json['forecast']['forecastday'][3]['day']['maxtemp_c'],
      minTempAfterAfterTomorrow: json['forecast']['forecastday'][3]['day']['mintemp_c'],
      imgAfterAfterTomorrow: json['forecast']['forecastday'][3]['day']['condition']['icon'],
  
    );
  }
}

