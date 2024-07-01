import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:nimbus/cubits/get%20weather%20cubit/get_weather_states.dart';
import 'package:nimbus/models/weather_model.dart';
import 'package:nimbus/services/weather_service.dart';

class GetWeatherCubit extends Cubit<WeatherState> {
  GetWeatherCubit() : super(WeatherIntialState());

  late WeatherModel weatherModel;

  getWeather({required String cityName}) async {
    try {
      emit(WeatherLoadingState()); // Emit the WeatherLoadingState before making the API call

      weatherModel = await WeatherService(Dio()).getCurrentWeather(cityName: cityName);

      emit(WeatherLoadedState(weatherModel));
    } catch (e) {
      emit(WeatherFailureState(e.toString()));
    }
  }
}
