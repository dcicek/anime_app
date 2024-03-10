import 'package:flutter/material.dart';

class SynopsisWidget extends StatelessWidget {
  final String synopsis;
  const SynopsisWidget({super.key, required this.synopsis});

  @override
  Widget build(BuildContext context) {
    return Text(synopsis);
  }
}
