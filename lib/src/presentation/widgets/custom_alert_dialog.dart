import 'package:flutter/material.dart';

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
                  child: Center(child: widget),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
