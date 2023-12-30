import 'package:b_store/app.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'data/repository/authentication_repository/authentication_repository.dart';
import 'firebase_options.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get_storage/get_storage.dart';

// Todo :

Future<void> main() async {
  //  Add widget Bindings
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();

  //Initialize Firebase

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((FirebaseApp value) => Get.put(AuthenticationRepository()));

  // Initialize Authentication

  // Init Local Storage
  await GetStorage.init();

  //  Await Native Splash

  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  runApp(const App());
}
