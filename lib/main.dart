import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_onboarding_screen/constants.dart';
import 'package:flutter_onboarding_screen/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Colors.transparent,
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(seedColor: kPrimaryColor),
        useMaterial3: false,
      ),
      home: const Onboarding(),
    );
  }
}
