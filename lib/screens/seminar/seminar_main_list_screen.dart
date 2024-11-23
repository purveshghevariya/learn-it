import 'package:flutter/material.dart';
import 'package:learn_it/screens/seminar/seminar_list.dart';
import 'package:learn_it/screens/seminar/seminar_list_screen.dart';
import 'package:learn_it/widgets/app_bar.dart';
import 'package:learn_it/widgets/navigation.dart';

import '../../configuration/app_colors.dart';
import '../../configuration/app_style.dart';

class SeminarMainListScreen extends StatefulWidget {
  const SeminarMainListScreen({super.key});

  @override
  State<SeminarMainListScreen> createState() => _SeminarMainListScreenState();
}

class _SeminarMainListScreenState extends State<SeminarMainListScreen> {
  @override
  Widget build(BuildContext context) {
    List seminarList = SeminarList.seminarListData;
    return Scaffold(
      appBar: appBar(title: "Seminar Ideas"),
      body: ListView.builder(
        itemCount: seminarList.length,
        padding: const EdgeInsets.all(16),
        itemBuilder: (context, index) {
          final seminar = seminarList[index];
          return Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: GestureDetector(
              onTap: () {
                navigationPush(
                    context,
                    SeminarListScreen(
                      data: seminar['data'],
                      title: seminar['topicName'],
                    ));
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
