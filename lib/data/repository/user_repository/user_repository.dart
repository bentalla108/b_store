import 'package:b_store/data/modal/user_modal/user_modal.dart';
import 'package:b_store/utils/exceptions/firebase_exceptions.dart';
import 'package:b_store/utils/exceptions/format_exceptions.dart';
import 'package:b_store/utils/exceptions/platform_exceptions.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../utils/exceptions/firebase_auth_exceptions.dart';

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();

  final FirebaseFirestore _db = FirebaseFirestore.instance;

  /// Function to save User to Firestore

  Future<void> saveUserRecord(UserModal user) async {
    try {
      await _db.collection('Users').doc(user.id).set(user.toJson());
    } on FirebaseAuthException catch (e) {
      throw BFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw BFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const BFormatException();
    } on PlatformException catch (e) {
      throw BPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong ! Please try again';
    }
  }
}
