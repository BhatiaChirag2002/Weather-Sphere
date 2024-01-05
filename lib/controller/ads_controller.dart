import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:weather_sphere/utils/keys.dart';

class AdController extends GetxController {
  @override
  void onInit() async {
    await loadTopBanner();
    super.onInit();
  }

  final topBannerAd = BannerAd(
          size: AdSize.banner,
          adUnitId: adMobId,
          listener: const BannerAdListener(),
          request: const AdRequest())
      .obs;
  Future<void> loadTopBanner() async {
    await topBannerAd.value.load();
  }

}
