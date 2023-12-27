import 'package:geocoding/geocoding.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class HeaderController extends GetxController {
  var city = ''.obs;
  var state = ''.obs;
  var date = ''.obs;

  void getAddress(lat, lon) async {
    List<Placemark> placemark = await placemarkFromCoordinates(lat, lon);
    Placemark place = placemark[0];
    city.value = place.locality!;
    state.value = place.administrativeArea!;
  }

  void timeDate() {
    date.value = DateFormat('EEEE, d MMMM y').format(DateTime.now());
  }
}
