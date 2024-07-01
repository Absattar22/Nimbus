import 'package:nimbus/models/weather_model.dart';

class WeatherState {}

class WeatherIntialState extends WeatherState {}

class WeatherLoadedState extends WeatherState {
  final WeatherModel weatherModel;
  WeatherLoadedState(this.weatherModel);
}

class WeatherFailureState extends WeatherState {
  final String errMessage;
  WeatherFailureState(this.errMessage);
}

class WeatherLoadingState extends WeatherState {}
