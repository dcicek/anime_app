import 'package:anime_app/src/config/theme/colors.dart';
import 'package:anime_app/src/config/theme/font_property.dart';
import 'package:anime_app/src/presentation/widgets/anime_detail.dart';
import 'package:anime_app/src/presentation/widgets/bottom_sheet.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class AnimeListItem extends StatelessWidget {
  final String image;
  final String title;
  final double rate;
  const AnimeListItem(
      {super.key,
      required this.image,
      required this.title,
      required this.rate});

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
                  flex: 1,
                  child: CachedNetworkImage(
                    fit: BoxFit.cover,
                    imageUrl: image,
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        title,
                        maxLines: 5,
                        textAlign: TextAlign.center,
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
                            rate.toString(),
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
