
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:nimbus/models/weather_model.dart';

class WeatherService {
  final Dio dio;

  final String baseUrl = 'http://api.weatherapi.com/v1';
  final String apiKey = '540bab385e15459ea8d160523242306';

  WeatherService(this.dio);

  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
    try {
      Response response = await dio.get('$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=5');

      WeatherModel weatherModel =  WeatherModel.fromJson(response.data);
      return weatherModel;
      
    } on DioException catch (e) {
      final String errorMessage =
          e.response?.data['error']['message'] ?? 'oops! something went wrong!';
      throw Exception(errorMessage);
    } catch (e) {
      log(e.toString());
      throw Exception('oops! something went wrong!');
    }
  }
}
