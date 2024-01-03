import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_sphere/utils/app_colors.dart';

class AppTextStyle {
  static TextStyle headerCityStateText() {
    return GoogleFonts.mulish(
        fontSize: 22.sp,
        color: AppColors.textColor,
        fontWeight: FontWeight.w700);
  }

  static TextStyle headerDateAndTimeText() {
    return GoogleFonts.mulish(
        fontSize: 15.sp,
        color: AppColors.textColor,
        fontWeight: FontWeight.w600);
  }

  static TextStyle currentWeatherDegree() {
    return GoogleFonts.robotoCondensed(
      fontSize: 60.sp,
      color: AppColors.textColor,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle currentWeatherDescription() {
    return GoogleFonts.chivo(
        fontSize: 25.sp,
        color: AppColors.textColor,
        fontWeight: FontWeight.w500);
  }

  static TextStyle currentWeatherContainerTitle() {
    return GoogleFonts.chivo(
        fontSize: 14.sp,
        color: AppColors.textColor,
        fontWeight: FontWeight.w500);
  }

  static TextStyle currentWeatherContainerAqi() {
    return GoogleFonts.chivo(
        fontSize: 14.sp,
        color: AppColors.textColor,
        fontWeight: FontWeight.w500);
  }

  static TextStyle currentWeatherContainerResult() {
    return GoogleFonts.chivo(
        fontSize: 13.sp,
        color: AppColors.textColor,
        fontWeight: FontWeight.w400);
  }
}
