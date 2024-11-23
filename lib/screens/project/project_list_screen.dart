import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:learn_it/configuration/ads_id.dart';
import 'package:learn_it/configuration/app_colors.dart';
import 'package:learn_it/configuration/app_style.dart';
import 'package:learn_it/configuration/local_storage.dart';
import 'package:learn_it/controller/intit_controller.dart';
import 'package:learn_it/screens/project/project_details_screen.dart';
import 'package:learn_it/screens/project/project_list.dart';
import 'package:learn_it/widgets/app_bar.dart';
import 'package:learn_it/widgets/loader.dart';
import 'package:learn_it/widgets/native_ad_shimmer.dart';
import 'package:learn_it/widgets/navigation.dart';

class ProjectListScreen extends StatefulWidget {
  const ProjectListScreen({super.key});

  @override
  State<ProjectListScreen> createState() => _ProjectListScreenState();
}

class _ProjectListScreenState extends State<ProjectListScreen> {
  String selectedType = 'All';
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
    List filteredProjects = selectedType == 'All'
        ? ProjectList.projectListData
        : ProjectList.projectListData
            .where((project) =>
                project['types'].contains(selectedType) ||
                selectedType == 'Both')
            .toList();

    return Scaffold(
      bottomNavigationBar: Obx(() => initController.nativeAdsLoadRunning.value
          ? Container(
              height: LocalStorage.smallNativeAdsSize,
              alignment: Alignment.center,
              color: AppColors.whiteColor,
              child: nativeAd == null ? Container() : AdWidget(ad: nativeAd!),
            )
          : bannerNativeShimmer(context)),
      appBar: appBar(title: "Project Ideas"),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: AppColors.primaryColor, width: 1),
                ),
                child: DropdownButton<String>(
                  value: selectedType,
                  items: [
                    'All',
                    'Website',
                    'Mobile App',
                  ]
                      .map((type) => DropdownMenuItem<String>(
                            value: type,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12),
                              child: Text(type),
                            ),
                          ))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedType = value!;
                    });
                  },
                  isExpanded: true,
                  hint: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Text(
                      "Select Project Type",
                      style: AppTextStyle.regularTextStyle,
                    ),
                  ),
                  underline: const SizedBox.shrink(),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: filteredProjects.length,
                itemBuilder: (context, index) {
                  final project = filteredProjects[index];
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: GestureDetector(
                      onTap: () {
                        navigationPush(
                            context, ProjectDetailsScreen(data: project));
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
                                project['title'],
                                style: AppTextStyle.mediumTextStyle,
                              ),
                              const SizedBox(height: 8),
                              Text(
                                "Project Name: ${project['name']}",
                                style: AppTextStyle.regularTextStyle,
                              ),
                              const SizedBox(height: 4),
                              Text(
                                "Types: ${project['types'].join(', ')}",
                                style: AppTextStyle.smallTextStyle,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
