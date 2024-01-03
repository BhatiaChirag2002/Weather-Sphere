import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weather_sphere/model/current_weather_data.dart';
import 'package:weather_sphere/model/hourly_weather_data.dart';
import 'package:weather_sphere/model/weather_data.dart';
import 'package:weather_sphere/utils/api_url.dart';

class FetchWeatherAPI {
  WeatherData? weatherData;
  Future<WeatherData> processData(lat, lon) async {
    var response = await http.get(Uri.parse(
      weatherUrl(lat, lon),
    ));
    var jsonString = jsonDecode(response.body);
    weatherData = WeatherData(
      CurrentWeatherData.fromJson(jsonString),
      HourlyWeatherData.fromJson(jsonString),
    );

    return weatherData!;
  }
}
