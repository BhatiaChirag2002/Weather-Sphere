import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:weather_sphere/controller/global_controller.dart';
import 'package:weather_sphere/controller/header_controller.dart';
import 'package:weather_sphere/utils/app_textstyle.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({super.key});

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  final GlobalController globalController = Get.find();
  final HeaderController headerController = Get.put(HeaderController());

  @override
  void initState() {
    headerController.timeDate();
    headerController.getAddress(
      globalController.findLatitude().value,
      globalController.findLongitude().value,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350.w,
      height: 80.h,
      child: Obx(() => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                  '${headerController.city.value}, ${headerController.state.value}',
                  style: AppTextStyle.headerCityStateText(),
                  overflow: TextOverflow.ellipsis),
              Text(headerController.date.value,
                  style: AppTextStyle.headerDateAndTimeText()),
            ],
          )),
    );
  }
}
