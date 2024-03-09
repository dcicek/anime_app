import 'package:anime_app/src/config/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomProgress extends StatelessWidget {
  const CustomProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 10.h,
        height: 10.h,
        child: CircularProgressIndicator(
          color: ThemeColors.themeColor,
          strokeWidth: 7,
        ),
      ),
    );
  }
}
