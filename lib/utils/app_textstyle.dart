import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_sphere/utils/app_colors.dart';

class AppTextStyle {
  static TextStyle headerCityStateText() {
    return TextStyle(
        fontFamily: 'Mulish',
        fontSize: 22.sp,
        color: AppColors.textColor,
        fontWeight: FontWeight.w700);
  }

  static TextStyle headerDateAndTimeText() {
    return TextStyle(
        fontFamily: 'Mulish',
        fontSize: 15.sp,
        color: AppColors.textColor,
        fontWeight: FontWeight.w600);
  }

  static TextStyle currentWeatherDegree() {
    return TextStyle(
      fontFamily: 'Roboto',
      fontSize: 60.sp,
      color: AppColors.textColor,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle currentWeatherDescription() {
    return TextStyle(
        fontFamily: 'Chivo',
        fontSize: 25.sp,
        color: AppColors.textColor,
        fontWeight: FontWeight.w500);
  }

  static TextStyle currentWeatherContainerTitle() {
    return TextStyle(
        fontFamily: 'Chivo',
        fontSize: 14.sp,
        color: AppColors.textColor,
        fontWeight: FontWeight.w500);
  }

  static TextStyle currentWeatherContainerAqi() {
    return TextStyle(
      fontFamily: 'Chivo',
        fontSize: 14.sp,
        color: AppColors.textColor,
        fontWeight: FontWeight.w500);
  }

  static TextStyle caveat() {
    return TextStyle(
      fontFamily: 'Caveat',
        fontSize: 18.sp,
        color: AppColors.textColor,
        fontWeight: FontWeight.w500);
  }

  static TextStyle currentWeatherContainerResult() {
    return TextStyle(
      fontFamily: 'Chivo',
        fontSize: 13.sp,
        color: AppColors.textColor,
        fontWeight: FontWeight.w400);
  }
}
