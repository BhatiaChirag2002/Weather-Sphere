import 'package:weather_sphere/utils/keys.dart';

String weatherUrl(var lat, var lon) {
  String url;
  url =
      "https://api.openweathermap.org/data/3.0/onecall?lat=$lat&lon=$lon&exclude=minutely&appid=$weatherApiKey&units=metric";
  return url;
}
