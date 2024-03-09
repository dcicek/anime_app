import 'package:anime_app/src/config/theme/colors.dart';
import 'package:anime_app/src/config/theme/font_property.dart';
import 'package:anime_app/src/presentation/widgets/anime_detail.dart';
import 'package:anime_app/src/presentation/widgets/bottom_sheet.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class AnimeListItem extends StatelessWidget {
  const AnimeListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GestureDetector(
        onTap: () {
          CustomBottomSheet.settingsBottomSheet(
              context, ThemeColors.themeColor, const AnimeDetailWidget());
        },
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black12),
              borderRadius: const BorderRadius.all(
                Radius.circular(15.0),
              )),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: CachedNetworkImage(
                    fit: BoxFit.cover,
                    imageUrl:
                        "https://www.shutterstock.com/image-vector/young-man-anime-style-character-600nw-2313503433.jpg",
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        "Attack on Titan",
                        maxLines: 2,
                        style: TextStyle(
                            overflow: TextOverflow.clip,
                            color: ThemeColors.themeColor,
                            fontWeight: FontWeight.bold,
                            fontSize: FontProperty.animeTitleSize),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            color: ThemeColors.rateStarColor,
                          ),
                          Text(
                            "9.15",
                            style: TextStyle(
                                color: ThemeColors.themeColor,
                                fontWeight: FontWeight.w500,
                                fontSize: FontProperty.animeSubTitle),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
