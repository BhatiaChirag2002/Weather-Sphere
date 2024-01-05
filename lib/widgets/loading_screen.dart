import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:weather_sphere/utils/app_colors.dart';
import 'package:weather_sphere/utils/app_textstyle.dart';
import 'package:weather_sphere/utils/my_flutter_app_icons.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 670.h,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            AppColors.gradientColor1,
            AppColors.gradientColor2,
          ],
        )),
        child: SafeArea(
          child: Scaffold(
              backgroundColor: Colors.transparent,
              body: SizedBox(
                height: 690.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      'Weather Sphere',
                      style: AppTextStyle.currentWeatherDescription(),
                    ),
                    Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SpinKitFadingCube(color: AppColors.textColor),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          'Loading',
                          style: AppTextStyle.currentWeatherDescription(),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Text(
                          'Please Wait',
                          style: AppTextStyle.currentWeatherDescription(),
                        )
                      ],
                    ),
                    Spacer(),
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
                      height: 2.h,
                    )
                  ],
                ),
              )),
        ));
  }
}
