import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:weather_sphere/controller/ads_controller.dart';
import 'package:weather_sphere/controller/global_controller.dart';
import 'package:weather_sphere/utils/app_colors.dart';
import 'package:weather_sphere/utils/app_textstyle.dart';
import 'package:weather_sphere/utils/my_flutter_app_icons.dart';
import 'package:weather_sphere/widgets/current_weather_widget.dart';
import 'package:weather_sphere/widgets/daily_weather_widget.dart';
import 'package:weather_sphere/widgets/header_widget.dart';
import 'package:weather_sphere/widgets/hourly_weather_widget.dart';
import 'package:weather_sphere/widgets/loading_screen.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final AdController adController = Get.put(AdController());
  final GlobalController globalController = Get.put(GlobalController());
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            AppColors.gradientColor1,
            AppColors.gradientColor2,
          ],
        )),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Obx(() => globalController.checkLoading().isTrue
                ? const LoadingScreen()
                : SafeArea(
                    child: Padding(
                    padding: EdgeInsets.only(
                        top: 5.h, left: 5.w, right: 5.w, bottom: 5.w),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                            height: adController.topBannerAd.value.size.height.toDouble(),
                            child: AdWidget(ad: adController.topBannerAd.value),
                          ),
                          const HeaderWidget(),
                          CurrentWeatherWidget(
                            currentWeatherData: globalController
                                .getWeatherData()
                                .getCurrentWeather(),
                          ),
                          HourlyWeatherWidget(
                            hourlyWeatherData: globalController
                                .getWeatherData()
                                .getHourlyWeather(),
                          ),
                          DailyWeatherWidget(
                              dailyWeatherData: globalController
                                  .getWeatherData()
                                  .getDailyWeather()),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Created by ',
                                style: AppTextStyle.caveat(),
                              ),
                              Icon(
                                MyFlutterApp.logo,
                                color: Colors.white,
                                size: 15.sp,
                              ),
                              Text(
                                ' Chirag Bhatia',
                                style: AppTextStyle.caveat(),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 2,
                          )
                        ],
                      ),
                    ),
                  )))));
  }
}
