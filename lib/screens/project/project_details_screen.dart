import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:learn_it/configuration/ads_id.dart';
import 'package:learn_it/configuration/app_style.dart';
import 'package:learn_it/controller/intit_controller.dart';
import 'package:learn_it/widgets/app_bar.dart';
import 'package:learn_it/widgets/loader.dart';

class ProjectDetailsScreen extends StatefulWidget {
  final Map data;
  const ProjectDetailsScreen({super.key, required this.data});

  @override
  State<ProjectDetailsScreen> createState() => _ProjectDetailsScreenState();
}

class _ProjectDetailsScreenState extends State<ProjectDetailsScreen> {
  InitController initController = Get.put(InitController());

  InterstitialAd? _interstitialAd;

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
    final data = widget.data;

    return Scaffold(
      appBar: appBar(title: data['name']),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data['title'],
                style: AppTextStyle.mediumTextStyle,
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 10),
              Text(
                data['description'],
                style: AppTextStyle.smallTextStyle,
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 20),
              Text(
                'Technologies Used:',
                style: AppTextStyle.mediumTextStyle,
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 10),
              if (data['technology'] != null) ...[
                _buildTechList('Frontend', data['technology']['frontend']),
                _buildTechList('Backend', data['technology']['backend']),
                _buildTechList('Database', data['technology']['database']),
              ],
              const SizedBox(height: 20),
              Text(
                'How to Make:',
                style: AppTextStyle.mediumTextStyle,
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 10),
              Text(
                data['howToMake'],
                style: AppTextStyle.smallTextStyle,
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 20),
              Text(
                'Types:',
                style: AppTextStyle.mediumTextStyle,
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 10),
              if (data['types'] != null)
                ...data['types']
                    .map<Widget>((type) => Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: Text(
                            '- $type',
                            style: AppTextStyle.smallTextStyle,
                            textAlign: TextAlign.justify,
                          ),
                        ))
                    .toList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTechList(String category, List<dynamic>? technologies) {
    if (technologies == null || technologies.isEmpty) return const SizedBox();
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$category:',
            textAlign: TextAlign.justify,
            style: AppTextStyle.regularTextStyle
                .copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5),
          ...technologies.map((tech) => Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 5),
                child: Text(
                  '- $tech',
                  style: AppTextStyle.smallTextStyle,
                  textAlign: TextAlign.justify,
                ),
              )),
        ],
      ),
    );
  }
}
