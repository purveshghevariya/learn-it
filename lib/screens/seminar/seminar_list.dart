import 'package:learn_it/screens/seminar/data/ai_list.dart';
import 'package:learn_it/screens/seminar/data/big_data_list.dart';
import 'package:learn_it/screens/seminar/data/block_chain_list.dart';
import 'package:learn_it/screens/seminar/data/cloud_computing_list.dart';
import 'package:learn_it/screens/seminar/data/cyber_security_list.dart';
import 'package:learn_it/screens/seminar/data/database_management.dart';
import 'package:learn_it/screens/seminar/data/dev_ops.dart';
import 'package:learn_it/screens/seminar/data/emerging_it_trend.dart';
import 'package:learn_it/screens/seminar/data/iot_list.dart';
import 'package:learn_it/screens/seminar/data/it_business_list.dart';
import 'package:learn_it/screens/seminar/data/it_project_management.dart';
import 'package:learn_it/screens/seminar/data/mobile_app_list.dart';
import 'package:learn_it/screens/seminar/data/networking_list.dart';
import 'package:learn_it/screens/seminar/data/software_developement.dart';
import 'package:learn_it/screens/seminar/data/vr_list.dart';
import 'package:learn_it/screens/seminar/data/website_list.dart';

class SeminarList {
  static List seminarListData = [
    {
      "topicName": "Artificial Intelligence & Machine Learning",
      "data": AiList.data
    },
    {"topicName": "Blockchain Technology", "data": BlockChainList.data},
    {"topicName": "Cloud Computing", "data": CloudComputingList.data},
    {
      "topicName": "Cybersecurity & Ethical Hacking",
      "data": CyberSecurityList.data
    },
    {"topicName": "Internet of Things (IoT)", "data": IotList.data},
    {"topicName": "Big Data & Data Analytics", "data": BigDataList.data},
    {"topicName": "Mobile App Development", "data": MobileAppList.data},
    {"topicName": "Web Development", "data": WebsiteList.data},
    {"topicName": "DevOps & Automation", "data": DevOps.data},
    {"topicName": "Virtual Reality & Augmented Reality", "data": VrList.data},
    {"topicName": "Emerging IT Trends", "data": EmergingItTrend.data},
    {"topicName": "Software Development", "data": SoftwareDevelopement.data},
    {"topicName": "Database Management", "data": DatabaseManagement.data},
    {"topicName": "Networking", "data": NetworkingList.data},
    {"topicName": "IT Project Management", "data": ItProjectManagement.data},
    {"topicName": "IT for Business", "data": ItBusinessList.data},
  ];
}
