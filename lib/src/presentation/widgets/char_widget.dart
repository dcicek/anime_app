import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CharacterWidget extends StatelessWidget {
  const CharacterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CachedNetworkImage(
            imageUrl:
                "https://www.shutterstock.com/image-vector/young-man-anime-style-character-600nw-2313503433.jpg"),
        Text("Didem"),
      ],
    );
  }
}
