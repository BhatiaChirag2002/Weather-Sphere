import 'package:weather_sphere/utils/api_key.dart';

String weatherUrl(var lat, var lon) {
  String url;
  url =
      "https://api.openweathermap.org/data/3.0/onecall?lat=$lat&lon=$lon&exclude=minutely&appid=$ApiKey&units=metric";
  return url;
}
