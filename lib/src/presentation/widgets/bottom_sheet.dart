import 'package:anime_app/src/config/theme/colors.dart';
import 'package:anime_app/src/config/theme/font_property.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomBottomSheet {
  static settingsBottomSheet(
      BuildContext context, Color bgColor, Widget widget) {
    showModalBottomSheet(
      useSafeArea: true,
      backgroundColor: bgColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
      ),
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return widget;
      },
    );
  }
}
