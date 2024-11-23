import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:learn_it/screens/home/drawer_screen.dart';
import '../configuration/ads_id.dart';
import '../configuration/app_colors.dart';
import '../configuration/image_path.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({
    super.key,
  });
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  AppOpenAd? myAppOpenAd;

  loadAppOpenAd() {
    AppOpenAd.load(
      adUnitId: AdsIdApp.appOpen,
      request: const AdRequest(),
      adLoadCallback: AppOpenAdLoadCallback(
          onAdLoaded: (ad) {
            myAppOpenAd = ad;
            myAppOpenAd!.show();
          },
          onAdFailedToLoad: (error) {}),
    );
  }

  @override
  void initState() {
    () async {
      loadAppOpenAd();
      Future.delayed(const Duration(seconds: 4), () {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => const DrawerScreen()),
            (route) => false);
      });
    }();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: AvatarGlow(
        startDelay: const Duration(milliseconds: 200),
        glowColor: AppColors.greyColor,
        glowShape: BoxShape.circle,
        curve: Curves.fastOutSlowIn,
        child: CircleAvatar(
          backgroundColor: Colors.grey[100],
          radius: 70.0,
          child: Image.asset(ImagePath.logo),
        ),
      ),
    ));
  }
}
