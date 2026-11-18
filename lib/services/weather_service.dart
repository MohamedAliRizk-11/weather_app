import 'package:weather_app/models/weather_model.dart';
import 'package:dio/dio.dart';

//
class WeatherService {
  final Dio dio; // object
  final String baseUrl = 'https://api.weatherapi.com/v1';
  //final String apiKey = "dd93dc3ba2ca4d39be4165442261610";
  final String apiKey = "d871ffbc3a314322a1f222510262210";

  WeatherService(this.dio); //constructor

  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
    try {
      Response response = await dio.get(
          '$baseUrl/forecast.json?key=$apiKey&q=${cityName}&days=10&aqi=no&alerts=no');

      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final String errMessage = e.response?.data['error']['message'] ??
          'oops there was an error , try later';
      throw Exception(errMessage);
    } catch (e) {
      throw Exception('oops there was an error , try later');
    }
  }
}
