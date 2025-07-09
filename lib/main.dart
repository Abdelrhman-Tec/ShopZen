import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_app/app/shopzen_app.dart';
import 'package:my_app/config/cache/cache_helper.dart';
import 'package:my_app/config/dependency_injection/dependency_injection.dart';
import 'package:my_app/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await CacheHelper().init();
  setupDependencyInjection();
  monitorAuthState(); 
  
  runApp(const ShopZen());
}

void monitorAuthState() {
  FirebaseAuth.instance.authStateChanges().listen((User? user) {
    if (user == null) {
      print('User is currently signed out!');
    } else {
      print('User is signed in!');
    }
  });
}
