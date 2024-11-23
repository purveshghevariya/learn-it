import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:learn_it/configuration/ads_id.dart';
import 'package:learn_it/configuration/app_style.dart';
import 'package:learn_it/controller/intit_controller.dart';
import 'package:learn_it/widgets/app_bar.dart';
import 'package:learn_it/widgets/loader.dart';

class SeminarDetailsScreen extends StatefulWidget {
  final Map<String, dynamic> data;
  const SeminarDetailsScreen({super.key, required this.data});

  @override
  State<SeminarDetailsScreen> createState() => _SeminarDetailsScreenState();
}

class _SeminarDetailsScreenState extends State<SeminarDetailsScreen> {
  InitController initController = Get.put(InitController());

  InterstitialAd? _interstitialAd;
  String selectedType = 'All';

  Future<void> ads_Lad() async {
    showLoadingDialog();
    InterstitialAd.load(
      adUnitId: AdsIdApp.interstitial,
      request: const AdRequest(),
      adLoadCallback:
          InterstitialAdLoadCallback(onAdLoaded: (InterstitialAd ad) {
        hideLoadingDialog(context: context);
        _interstitialAd = ad;
        _interstitialAd!.show();
      }, onAdFailedToLoad: (LoadAdError error) {
        hideLoadingDialog(context: context);
      }),
    );
  }

  @override
  void initState() {
    () async {
      if (initController.adsVal.value == 0) {
        await ads_Lad();
        initController.adsVal.value++;
      } else {
        initController.adsVal.value++;
        if (initController.adsVal.value == 3) {
          initController.adsVal.value = 0;
        }
      }
    }();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(title: widget.data['topicName']),
      body: ListView.builder(
        itemCount: widget.data['index'].length,
        itemBuilder: (context, sectionIndex) {
          final section = widget.data['index'][sectionIndex];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 4,
              child: ExpansionTile(
                title: Text(
                  section['sectionTitle'],
                  style: AppTextStyle.mediumTextStyle,
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: SelectableText(
                      section['details'],
                      style: AppTextStyle.smallTextStyle,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  if (section['subSections'] != null)
                    Column(
                      children: List.generate(
                        section['subSections'].length,
                        (subIndex) {
                          final subSection = section['subSections'][subIndex];
                          return ExpansionTile(
                            title: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Text(
                                subSection['subSectionTitle'],
                                style: AppTextStyle.mediumTextStyle,
                                textAlign: TextAlign.justify,
                              ),
                            ),
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 32),
                                child: SelectableText(
                                  subSection['subSectionDetails'],
                                  style: AppTextStyle.smallTextStyle,
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
