import 'package:get/get.dart';

class InitController extends GetxController {
  RxInt adsVal = 0.obs;
  RxBool bannerAdaAvailable = false.obs;
  RxBool isLoader = true.obs;
  RxBool nativeAdsLoadRunning = false.obs;
}
