import 'package:anime_app/src/presentation/widgets/divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class CustomAlertDialog {
  static getAlert(BuildContext context, Widget widget,
      {required double height}) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          actions: [
            SizedBox(
              height: height,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: widget,
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
