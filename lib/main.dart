import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/route_manager.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'configuration/app_colors.dart';
import 'screens/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const LearnIt());
}

class LearnIt extends StatelessWidget {
  const LearnIt({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "poppins",
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: AppColors.whiteColor),
        ),
      ),
      home: const SplashScreen(),
    );
  }
}
