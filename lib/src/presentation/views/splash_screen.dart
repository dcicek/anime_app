import 'dart:async';
import 'dart:math';

import 'package:anime_app/src/config/theme/colors.dart';
import 'package:anime_app/src/config/theme/font_property.dart';
import 'package:anime_app/src/utils/public_functions.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  List<String> bgList = [
    "lib/assets/bg1.png",
    "lib/assets/bg2.png",
    "lib/assets/bg3.png"
  ];
  int randomNumber = 0;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      //Splash screen 3 saniye duracak
      Future.delayed(const Duration(seconds: 3), () {
        Navigator.pushNamed(context, "/home");
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //Background için rastgele sayı üretilip ona göre bir bg seçiliyor.
    randomNumber = PublicFunc.randomGenerate();
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.asset(
            bgList[randomNumber],
            width: 100.w,
            height: 100.h,
            fit: BoxFit.cover,
          ),
          Container(
            width: 100.w,
            height: 100.h,
            color: Colors.white.withOpacity(0.5),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 25.0),
            child: Container(
              width: 100.w,
              decoration: BoxDecoration(color: Colors.white.withOpacity(0.5)),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  "ANIME ECHO",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: ThemeColors.themeColor,
                      fontWeight: FontWeight.bold,
                      fontSize: FontProperty.appTitleSize),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
