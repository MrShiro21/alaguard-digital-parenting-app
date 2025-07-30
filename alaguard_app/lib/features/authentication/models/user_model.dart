import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String id;
  final String email;
  final String name;
  final String phone;
  final bool isVerified;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String? profileImage;

  UserModel({
    required this.id,
    required this.email,
    required this.name,
    required this.phone,
    this.isVerified = false,
    required this.createdAt,
    required this.updatedAt,
    this.profileImage,
  });

  factory UserModel.fromMap(Map<String, dynamic> map, String id) {
    return UserModel(
      id: id,
      email: map['email'] ?? '',
      name: map['name'] ?? '',
      phone: map['phone'] ?? '',
      isVerified: map['isVerified'] ?? false,
      createdAt: (map['createdAt'] as Timestamp).toDate(),
      updatedAt: (map['updatedAt'] as Timestamp).toDate(),
      profileImage: map['profileImage'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'name': name,
      'phone': phone,
      'isVerified': isVerified,
      'createdAt': Timestamp.fromDate(createdAt),
      'updatedAt': Timestamp.fromDate(updatedAt),
      'profileImage': profileImage,
    };
  }
}
