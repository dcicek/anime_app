import 'package:flutter/material.dart';

class FailWidget extends StatelessWidget {
  final String message;
  const FailWidget({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Icon(
          Icons.close,
          size: 60.0,
          color: Colors.red,
        ),
        Text(message)
      ],
    );
  }
}
