class WeatherModel {

  final String cityName;
  final String lastUpdated;
  final String dateToday;
  final String dateTomorrow;
  final String dateAfterTomorrow;
  final String dateAfterAfterTomorrow;
  final String hoursToday;
  final String hoursTomorrow;
  final String hoursAfterTomorrow;
  final String hoursAfterAfterTomorrow;
  final String tempToday;
  final String tempTomorrow;
  final String tempAfterTomorrow;
  final String tempAfterAfterTomorrow;
  final String conditionToday;
  final String conditionTomorrow;
  final String conditionAfterTomorrow;
  final String conditionAfterAfterTomorrow;
  final String imgToday;
  final String imgTomorrow;
  final String imgAfterTomorrow;
  final String imgAfterAfterTomorrow;
  final String imgHourToday;
  final String imgHourTomorrow;
  final String imgHourAfterTomorrow;
  final String imgHourAfterAfterTomorrow;

  

  WeatherModel({
    required this.cityName,
    required this.lastUpdated,
    required this.dateToday,
    required this.dateTomorrow,
    required this.dateAfterTomorrow,
    required this.dateAfterAfterTomorrow,
    required this.hoursToday,
    required this.hoursTomorrow,
    required this.hoursAfterTomorrow,
    required this.hoursAfterAfterTomorrow,
    required this.tempToday,
    required this.tempTomorrow,
    required this.tempAfterTomorrow,
    required this.tempAfterAfterTomorrow,
    required this.conditionToday,
    required this.conditionTomorrow,
    required this.conditionAfterTomorrow,
    required this.conditionAfterAfterTomorrow,
    required this.imgToday,
    required this.imgTomorrow,
    required this.imgAfterTomorrow,
    required this.imgAfterAfterTomorrow,
    required this.imgHourToday,
    required this.imgHourTomorrow,
    required this.imgHourAfterTomorrow,
    required this.imgHourAfterAfterTomorrow,
  });

  factory WeatherModel.fromJson(json) {
    return WeatherModel(
      cityName: json['location']['name'],
      lastUpdated: json['current']['last_updated'],

      dateToday: json['forecast']['forecastday'][0]['date'],
      tempToday: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
      conditionToday: json['forecast']['forecastday'][0]['day']['condition']['text'],
      imgToday: json['forecast']['forecastday'][0]['day']['condition']['icon'],
      hoursToday: json['forecast']['forecastday'][0]['hour'],
      imgHourToday: json['forecast']['forecastday'][0]['hour']['condition']['icon'],

      dateTomorrow: json['forecast']['forecastday'][1]['date'],
      tempTomorrow: json['forecast']['forecastday'][1]['day']['avgtemp_c'],
      conditionTomorrow: json['forecast']['forecastday'][1]['day']['condition']['text'],
      imgTomorrow: json['forecast']['forecastday'][1]['day']['condition']['icon'],
      hoursTomorrow: json['forecast']['forecastday'][1]['hour'],
      imgHourTomorrow: json['forecast']['forecastday'][1]['hour']['condition']['icon'],

      dateAfterTomorrow: json['forecast']['forecastday'][2]['date'],
      tempAfterTomorrow: json['forecast']['forecastday'][2]['day']['avgtemp_c'],
      conditionAfterTomorrow: json['forecast']['forecastday'][2]['day']['condition']['text'],
      imgAfterTomorrow: json['forecast']['forecastday'][2]['day']['condition']['icon'],
      hoursAfterTomorrow: json['forecast']['forecastday'][2]['hour'],
      imgHourAfterTomorrow: json['forecast']['forecastday'][2]['hour']['condition']['icon'],

      dateAfterAfterTomorrow: json['forecast']['forecastday'][3]['date'],
      tempAfterAfterTomorrow: json['forecast']['forecastday'][3]['day']['avgtemp_c'],
      conditionAfterAfterTomorrow: json['forecast']['forecastday'][3]['day']['condition']['text'],
      imgAfterAfterTomorrow: json['forecast']['forecastday'][3]['day']['condition']['icon'],
      hoursAfterAfterTomorrow: json['forecast']['forecastday'][3]['hour'],
      imgHourAfterAfterTomorrow: json['forecast']['forecastday'][3]['hour']['condition']['icon'],
      
    );
  }
}
