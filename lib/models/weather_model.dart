class WeatherModel {
  final String cityName;
  final String date;
  final String? img;
  final String temp;
  final String condition;
  

  WeatherModel({
      required this.cityName,
      required this.date,
      this.img,
      required this.temp,
      required this.condition,
  });

  factory WeatherModel.fromJson(json) {
    return WeatherModel(
      cityName: json['name'],
      date: DateTime.now().toString(),
      img: json['weather'][0]['icon'],
      temp: json['main']['temp'].toString(),
      condition: json['weather'][0]['main'],
    );
  }
}