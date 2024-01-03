import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:weather_sphere/controller/global_controller.dart';
import 'package:weather_sphere/utils/app_colors.dart';
import 'package:weather_sphere/widgets/current_weather_widget.dart';
import 'package:weather_sphere/widgets/header_widget.dart';
import 'package:weather_sphere/widgets/hourly_weather_widget.dart';
import 'package:weather_sphere/widgets/loading_screen.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
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
                         const HeaderWidget(),
                          CurrentWeatherWidget(
                            currentWeatherData: globalController.getWeatherData().getCurrentWeather(),
                          ),
                          HourlyWeatherWidget(
                            hourlyWeatherData: globalController.getWeatherData().getHourlyWeather(),
                          )
                        ],
                      ),
                    ),
                  )))));
  }
}
