import 'package:flutter/material.dart';
import 'package:learn_it/configuration/app_colors.dart';
import 'package:learn_it/configuration/app_style.dart';
import 'package:learn_it/widgets/app_bar.dart';
import 'package:url_launcher/url_launcher.dart';
import 'home_screen.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void toggleDrawer() {
    if (_animationController.isCompleted) {
      _animationController.reverse();
    } else {
      _animationController.forward();
    }
  }

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.primaryColor.withOpacity(0.5),
      body: GestureDetector(
        onHorizontalDragUpdate: (details) {
          if (details.delta.dx > 0) {
            _animationController.value += details.delta.dx / 250;
          } else if (details.delta.dx < 0) {
            _animationController.value += details.delta.dx / 250;
          }
        },
        onHorizontalDragEnd: (details) {
          if (_animationController.value > 0.5) {
            _animationController.forward();
          } else {
            _animationController.reverse();
          }
        },
        child: Stack(
          children: [
            buildDrawer(size: size),
            AnimatedBuilder(
              animation: _animationController,
              builder: (context, child) {
                double slide = 250 * _animationController.value;
                double scale = 1 - (_animationController.value * 0.2);
                return Transform(
                  transform: Matrix4.identity()
                    ..translate(slide)
                    ..scale(scale),
                  alignment: Alignment.centerLeft,
                  child: child,
                );
              },
              child: buildHomeScreen(),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDrawer({required Size size}) {
    return SizedBox(
      width: 250,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/app/logo.png",
                    height: 44,
                  ),
                  Text(
                    "Learn It",
                    style: AppTextStyle.mediumTextStyle
                        .copyWith(color: AppColors.whiteColor, fontSize: 32),
                  ),
                ],
              ),
              const Divider(
                color: AppColors.greyColor,
              ),
              drawerOption("Privacy & Policy", "assets/app/privacy-policy.png",
                  () async {
                await _launchUrl(
                  "https://doc-hosting.flycricket.io/learn-it-privacy-policy/be1f4b9c-8b5f-4664-b9bb-0768d37ce180/privacy",
                );
              }),
              drawerOption(
                "Rate Us",
                "assets/app/rate.png",
                () async {
                  await _launchUrl(
                    'https://play.google.com/store/apps/details?id=com.app.learn.it',
                  );
                },
              ),
              drawerOption(
                "Contact Us",
                "assets/app/contact.png",
                () async {
                  final Uri emailUri = Uri(
                    scheme: 'mailto',
                    path: 'devgeniuskb@gmail.com',
                  );
                  await launchUrl(emailUri);
                },
              ),
              drawerOption(
                "Instagram",
                "assets/app/instagram.png",
                () async {
                  await _launchUrl("https://www.instagram.com/dev._.genius/");
                },
              ),
              SizedBox(height: size.height / 2.3),
              Text(
                "Version: 1.0.0",
                style: AppTextStyle.smallTextStyle
                    .copyWith(color: AppColors.greyColor, fontSize: 12),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    "Co-powered by ",
                    style: AppTextStyle.smallTextStyle
                        .copyWith(color: AppColors.greyColor, fontSize: 12),
                  ),
                  Text(
                    "Dev Genius",
                    style: AppTextStyle.smallTextStyle
                        .copyWith(color: AppColors.whiteColor, fontSize: 12),
                  ),
                  Image.asset(
                    "assets/app/dev genius.png",
                    height: 24,
                  )
                ],
              ),
              const SizedBox(height: 5),
              GestureDetector(
                onTap: () async {
                  await _launchUrl(
                      "https://www.youtube.com/channel/UCZiSOQbVxpR_wFfLpPlZNxg");
                },
                child: Text(
                  "YouTube",
                  style: AppTextStyle.smallTextStyle
                      .copyWith(color: AppColors.whiteColor, fontSize: 12),
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _launchUrl(String url) async {
    if (!await launchUrl(Uri.parse(url),
        mode: LaunchMode.externalApplication)) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Unable to open $url")),
      );
    }
  }

  Widget drawerOption(String title, String icon, Function() onTap) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          children: [
            Image.asset(
              icon,
              color: Colors.white,
              height: 24,
            ),
            const SizedBox(width: 15),
            Text(
              title,
              style: AppTextStyle.smallTextStyle
                  .copyWith(color: AppColors.whiteColor),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildHomeScreen() {
    return Scaffold(
      appBar: appBar(
        title: "Learn It",
        isLeading: true,
        leading: Center(
          child: GestureDetector(
            onTap: toggleDrawer,
            child: Image.asset(
              "assets/icons/menu.png",
              height: 28,
              color: AppColors.whiteColor,
            ),
          ),
        ),
      ),
      body: const HomeScreen(),
    );
  }
}
