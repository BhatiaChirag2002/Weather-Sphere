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
}
