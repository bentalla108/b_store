// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:convert';

import 'package:b_store/utils/formatters/formatter.dart';

class UserModal {
  final String id;
  final String firstName;
  final String lastName;
  final String username;
  final String email;
  final String phoneNumber;
  final String profilePicture;

  UserModal(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.username,
      required this.email,
      required this.phoneNumber,
      required this.profilePicture});

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'firstName': firstName,
      'lastName': lastName,
      'username': username,
      'email': email,
      'phoneNumber': phoneNumber,
      'profilePicture': profilePicture,
    };
  }

  // Firebase take a map no need to encode to json

  toJsonString() => json.encode(toJson());

  /// Factory method to create user from firebase

  // factory UserModal.fromSnapshot(
  //     DocumentSnapshot<Map<String, dynamic>> document) {
  //   if (document.data() != null) {
  //     final data = document.data()!;

  //     return UserModal(
  //       id: document.id,
  //       firstName: (data['firstName'] ?? '') as String,
  //       lastName: (data['lastName'] ?? '') as String,
  //       username: (data['username'] ?? '') as String,
  //       email: (data['email'] ?? '') as String,
  //       phoneNumber: (data['phoneNumber'] ?? '') as String,
  //       profilePicture: (data['profilePicture'] ?? '') as String,
  //     );
  //   }
  // }
  // factory UserModal.fromMap(Map<String, dynamic> map) {
  //   return UserModal(
  //     id: (map['id'] ?? '') as String,
  //     firstName: (map['firstName'] ?? '') as String,
  //     lastName: (map['lastName'] ?? '') as String,
  //     username: (map['username'] ?? '') as String,
  //     email: (map['email'] ?? '') as String,
  //     phoneNumber: (map['phoneNumber'] ?? '') as String,
  //     profilePicture: (map['profilePicture'] ?? '') as String,
  //   );
  // }

  // factory UserModal.fromJson(String source) =>
  //     UserModal.fromMap(json.decode(source) as Map<String, dynamic>);

  /// helper function to get the full name
  String get fullName => '$firstName $lastName';

  /// helper function to format phone number
  String get formatedPhoneNumber => BFormatter.formatPhoneNumber(phoneNumber);

  static List<String> nameParts(fullName) => fullName.split(' ');

  static String generateUsername(fullName) {
    List<String> nameParts = fullName.split(' ');
    String firstName = nameParts[0].toLowerCase();
    String lastName = nameParts.length > 1 ? nameParts[1].toLowerCase() : '';

    String camelCaseUsername = '$firstName$lastName';
    String usernameWithPrefix = 'cwt_$camelCaseUsername';

    return usernameWithPrefix;
  }

  /// Empty username
  factory UserModal.empty() => UserModal(
      id: '',
      firstName: '',
      lastName: '',
      username: '',
      email: '',
      phoneNumber: '',
      profilePicture: '');
}
