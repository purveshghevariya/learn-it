import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:learn_it/configuration/app_style.dart';
import 'package:learn_it/configuration/image_path.dart';
import 'package:learn_it/screens/project/project_list_screen.dart';
import 'package:learn_it/screens/seminar/seminar_main_list_screen.dart';

import 'package:learn_it/widgets/navigation.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../configuration/app_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> carouselImages = [
    'assets/images/dev genius.png',
    'assets/images/love meter.png',
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          CarouselSlider(
            items: carouselImages
                .map((image) => GestureDetector(
                      onTap: () async {
                        if (image == "assets/images/dev genius.png") {
                          await _launchUrl(
                              "https://www.instagram.com/dev._.genius/");
                        } else {
                          await _launchUrl(
                            'https://play.google.com/store/apps/details?id=com.app.love.meter',
                          );
                        }
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          image,
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      ),
                    ))
                .toList(),
            options: CarouselOptions(
              height: 200,
              autoPlay: true,
              enlargeCenterPage: true,
              viewportFraction: 0.9,
              aspectRatio: 16 / 9,
              initialPage: 0,
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Explore Ideas',
              style: AppTextStyle.mediumTextStyle,
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildOptionCard(
                  context,
                  title: 'Project Ideas',
                  icon: ImagePath.project,
                  color: AppColors.primaryColor,
                  onTap: () {
                    navigationPush(context, const ProjectListScreen());
                  },
                ),
                _buildOptionCard(
                  context,
                  title: 'Seminar Ideas',
                  icon: ImagePath.seminar,
                  color: AppColors.primaryColor,
                  onTap: () {
                    navigationPush(context, const SeminarMainListScreen());
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOptionCard(BuildContext context,
      {required String title,
      required String icon,
      required Color color,
      required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 120,
        width: MediaQuery.of(context).size.width * 0.4,
        decoration: BoxDecoration(
          color: color.withOpacity(0.1),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: color, width: 1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              icon,
              height: 32,
              color: color,
            ),
            const SizedBox(height: 10),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
          ],
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
}
