import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';

class GlobalController extends GetxController {
  static GlobalController get instance => Get.find();

  final RxBool _isLoading = true.obs;
  final RxDouble _latitude = 0.0.obs;
  final RxDouble _longitude = 0.0.obs;

  RxBool checkLoading() => _isLoading;

  RxDouble findLatitude() => _latitude;

  RxDouble findLongitude() => _longitude;

  @override
  void onInit() async {
    if (_isLoading.isTrue) {
      findLocation();
    }
    super.onInit();
  }

  findLocation() async {
    bool isServiceEnabled;
    LocationPermission locationPermission;

    isServiceEnabled = await Geolocator.isLocationServiceEnabled();

    if (!isServiceEnabled) {
      return Future.error("Location not Enabled");
    }

    locationPermission = await Geolocator.checkPermission();

    if (locationPermission == LocationPermission.deniedForever) {
      return Future.error("Location permission are denied Forever");
    } else if (locationPermission == LocationPermission.denied) {
      locationPermission = await Geolocator.requestPermission();
      if (locationPermission == LocationPermission.denied) {
        return Future.error("Location permission is denied");
      }
    }

    return await Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.high)
        .then((value) {
      _latitude.value = value.latitude;
      _longitude.value = value.longitude;
      _isLoading.value = false;
    });
  }
}
