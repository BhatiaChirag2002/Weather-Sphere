import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:weather_sphere/model/current_weather_data.dart';
import 'package:weather_sphere/utils/app_colors.dart';
import 'package:weather_sphere/utils/app_textstyle.dart';
import 'package:flutter/material.dart';

class CurrentWeatherWidget extends StatelessWidget {
  final int? sunrise;
  final int? sunset;
  final CurrentWeatherData currentWeatherData;
  const CurrentWeatherWidget(
      {super.key, required this.currentWeatherData, this.sunrise, this.sunset});

  String getSunriseTime(final sunrise) {
    DateTime time = DateTime.fromMillisecondsSinceEpoch(sunrise * 1000);
    String x = DateFormat('jm').format(time);
    return x;
  }

  String getSunsetTime(final sunset) {
    DateTime time = DateTime.fromMillisecondsSinceEpoch(sunset * 1000);
    String x = DateFormat('jm').format(time);
    return x;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 170.h,
            width: 170.h,
            child: Image.asset(
              'assets/weather/${currentWeatherData.current.weather![0].icon}.png',
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
              width: 350.w,
              child: Text(
                '${currentWeatherData.current.temp!.round()}ºC',
                style: AppTextStyle.currentWeatherDegree(),
                textAlign: TextAlign.center,
              )),
          SizedBox(
              width: 350.w,
              child: Text(
                '${currentWeatherData.current.weather![0].description}',
                style: AppTextStyle.currentWeatherDescription(),
                textAlign: TextAlign.center,
              )),
          Padding(
            padding: EdgeInsets.only(top: 10.h),
            child: Container(
                height: 250.h,
                width: 330.w,
                decoration: BoxDecoration(
                    color: AppColors.weatherContainer,
                    borderRadius: BorderRadius.circular(20.r)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CurrentWeatherContainerWidget(
                            image: 'sunrise',
                            title: 'Sunrise',
                            result: getSunriseTime(
                                currentWeatherData.current.sunrise)),
                        CurrentWeatherContainerWidget(
                            image: 'cloud',
                            title: 'Clouds',
                            result: '${currentWeatherData.current.clouds}%'),
                        CurrentWeatherContainerWidget(
                            image: 'humidity',
                            title: 'Humidity',
                            result: '${currentWeatherData.current.humidity}%'),
                        CurrentWeatherContainerWidget(
                            image: 'feels',
                            title: 'Feels Like',
                            result:
                                '${currentWeatherData.current.feelsLike!.round()}ºC'),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CurrentWeatherContainerWidget(
                            image: 'sunset',
                            title: 'Sunset',
                            result: getSunsetTime(
                                currentWeatherData.current.sunset)),
                        CurrentWeatherContainerWidget(
                            image: 'wind',
                            title: 'Wind',
                            result:
                                '${currentWeatherData.current.windSpeed!.round()} m/s'),
                        CurrentWeatherContainerWidget(
                            image: 'uvi',
                            title: 'UV Index',
                            result:
                                '${currentWeatherData.current.uvi!.round()}'),
                        CurrentWeatherContainerWidget(
                            image: 'pressure',
                            title: 'Pressure',
                            result:
                                '${currentWeatherData.current.pressure!.round()} hPa'),
                      ],
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}

class CurrentWeatherContainerWidget extends StatelessWidget {
  final String image;
  final String title;
  final String result;
  const CurrentWeatherContainerWidget({
    super.key,
    required this.image,
    required this.title,
    required this.result,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 5.h, bottom: 5.h),
      child: Row(
        children: [
          SizedBox(
            height: 45.h,
            width: 45.h,
            child: Image.asset('assets/icons/$image.png'),
          ),
          Padding(
            padding: EdgeInsets.only(left: 4.w),
            child: SizedBox(
              width: 70.w,
              child: Column(
                children: [
                  Text(
                    title,
                    style: AppTextStyle.currentWeatherContainerTitle(),
                  ),
                  Text(
                    result,
                    style: AppTextStyle.currentWeatherContainerResult(),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
