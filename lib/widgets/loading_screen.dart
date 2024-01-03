import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:weather_sphere/utils/app_colors.dart';
import 'package:weather_sphere/utils/app_textstyle.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

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
            body:  Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SpinKitFadingCube(color: AppColors.textColor),
                const SizedBox(height: 10,),
                Text('Loading',style: AppTextStyle.currentWeatherDescription(),),
                const SizedBox(height: 2,),
                Text('Please Wait',style: AppTextStyle.currentWeatherDescription(),)
              ],
            )
        ));
  }
}
