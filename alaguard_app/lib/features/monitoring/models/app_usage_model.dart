import 'package:cloud_firestore/cloud_firestore.dart';

class AppUsageModel {
  final String id;
  final String childId;
  final String appName;
  final int usageTimeMinutes;
  final DateTime usageDate;
  final DateTime createdAt;
  final DateTime updatedAt;

  AppUsageModel({
    required this.id,
    required this.childId,
    required this.appName,
    required this.usageTimeMinutes,
    required this.usageDate,
    required this.createdAt,
    required this.updatedAt,
  });

  factory AppUsageModel.fromMap(Map<String, dynamic> map, String id) {
    return AppUsageModel(
      id: id,
      childId: map['childId'] ?? '',
      appName: map['appName'] ?? '',
      usageTimeMinutes: map['usageTimeMinutes'] ?? 0,
      usageDate: (map['usageDate'] as Timestamp).toDate(),
      createdAt: (map['createdAt'] as Timestamp).toDate(),
      updatedAt: (map['updatedAt'] as Timestamp).toDate(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'childId': childId,
      'appName': appName,
      'usageTimeMinutes': usageTimeMinutes,
      'usageDate': Timestamp.fromDate(usageDate),
      'createdAt': Timestamp.fromDate(createdAt),
      'updatedAt': Timestamp.fromDate(updatedAt),
    };
  }
}
