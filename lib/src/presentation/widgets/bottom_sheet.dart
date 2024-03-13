import 'package:flutter/material.dart';

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
