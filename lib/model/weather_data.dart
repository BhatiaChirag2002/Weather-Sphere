import 'package:weather_sphere/model/current_weather_data.dart';
import 'package:weather_sphere/model/hourly_weather_data.dart';

class WeatherData {
  final CurrentWeatherData? current;
  final HourlyWeatherData? hourly;

  WeatherData([this.current, this.hourly]);

  CurrentWeatherData getCurrentWeather() => current!;
  HourlyWeatherData getHourlyWeather() => hourly!;
}

