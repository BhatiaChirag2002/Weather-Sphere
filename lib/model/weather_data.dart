import 'package:weather_sphere/model/current_weather_data.dart';

class WeatherData {
  final CurrentWeatherData? current;

  WeatherData([this.current]);

  CurrentWeatherData getCurrentWeather() => current!;
}

