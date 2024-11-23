import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:learn_it/configuration/ads_id.dart';
import 'package:learn_it/configuration/app_colors.dart';
import 'package:learn_it/configuration/app_style.dart';
import 'package:learn_it/configuration/local_storage.dart';
import 'package:learn_it/controller/intit_controller.dart';
import 'package:learn_it/screens/seminar/seminar_details_screen.dart';
import 'package:learn_it/widgets/loader.dart';
import 'package:learn_it/widgets/native_ad_shimmer.dart';
import 'package:learn_it/widgets/navigation.dart';

import '../../widgets/app_bar.dart';

class SeminarListScreen extends StatefulWidget {
  final List data;
  final String title;
  const SeminarListScreen({super.key, required this.data, required this.title});

  @override
  State<SeminarListScreen> createState() => _SeminarListScreenState();
}

class _SeminarListScreenState extends State<SeminarListScreen> {
  NativeAd? nativeAd;
  InitController initController = Get.put(InitController());
  @override
  void initState() {
    showLoadingDialog();
    Future.microtask(() {
      initController.nativeAdsLoadRunning.value = false;
      () async {
        nativeAd = NativeAd(
          adUnitId: AdsIdApp.native,
          factoryId: 'listTilesmall',
          request: const AdRequest(),
          listener: NativeAdListener(onAdLoaded: (_) {
            hideLoadingDialog(context: context);
            initController.nativeAdsLoadRunning.value = true;
          }, onAdFailedToLoad: (ad, error) {
            hideLoadingDialog(context: context);
            ad.dispose();
          }),
        );
        await nativeAd!.load();
      }();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List seminarList = widget.data;
    return Scaffold(
      bottomNavigationBar: Obx(() => initController.nativeAdsLoadRunning.value
          ? Container(
              height: LocalStorage.smallNativeAdsSize,
              alignment: Alignment.center,
              color: AppColors.whiteColor,
              child: nativeAd == null ? Container() : AdWidget(ad: nativeAd!),
            )
          : bannerNativeShimmer(context)),
      appBar: appBar(title: widget.title),
      body: ListView.builder(
        itemCount: seminarList.length,
        padding: const EdgeInsets.all(16),
        itemBuilder: (context, index) {
          final seminar = seminarList[index];
          return Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: GestureDetector(
              onTap: () {
                navigationPush(context, SeminarDetailsScreen(data: seminar));
              },
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        seminar['topicName'],
                        style: AppTextStyle.mediumTextStyle,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
