import 'package:anime_app/src/config/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomProgress extends StatelessWidget {
  const CustomProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 7.h,
      height: 7.h,
      child: CircularProgressIndicator(
        color: ThemeColors.themeColor,
        strokeWidth: 7,
      ),
    );
  }
}
