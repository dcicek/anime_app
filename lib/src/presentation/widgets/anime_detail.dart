import 'package:anime_app/src/config/theme/colors.dart';
import 'package:anime_app/src/config/theme/font_property.dart';
import 'package:anime_app/src/presentation/widgets/char_widget.dart';
import 'package:anime_app/src/presentation/widgets/custom_alert_dialog.dart';
import 'package:anime_app/src/presentation/widgets/synopsis_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AnimeDetailWidget extends StatelessWidget {
  const AnimeDetailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.h,
      child: Padding(
        padding: const EdgeInsets.only(top: 25),
        child: Column(children: [
          Expanded(
            flex: 3,
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(15.0)),
              child: CachedNetworkImage(
                fit: BoxFit.cover,
                imageUrl:
                    "https://www.shutterstock.com/image-vector/young-man-anime-style-character-600nw-2313503433.jpg",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              "Attack On Titan",
              style: TextStyle(
                  color: ThemeColors.bottomSheetTitleColor,
                  fontSize: FontProperty.animeTitleSize,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: GestureDetector(
              onTap: () {
                CustomAlertDialog.getAlert(context, SynopsisWidget(),
                    height: 60.h);
              },
              child: Text(
                "Synopsis",
                style: TextStyle(
                  color: ThemeColors.bottomSheetTitleColor,
                  fontSize: FontProperty.animeSubTitle,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: GestureDetector(
              onTap: () {
                CustomAlertDialog.getAlert(context, CharacterWidget(),
                    height: 60.h);
              },
              child: Text(
                "Characters",
                style: TextStyle(
                  color: ThemeColors.bottomSheetTitleColor,
                  fontSize: FontProperty.animeSubTitle,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.star,
                  color: ThemeColors.rateStarColor,
                ),
                Text(
                  "9.15",
                  style: TextStyle(
                    color: ThemeColors.bottomSheetTitleColor,
                    fontSize: FontProperty.animeSubTitle,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Episodes Count: ",
                  style: TextStyle(
                    color: ThemeColors.bottomSheetTitleColor,
                    fontSize: FontProperty.animeSubTitle,
                  ),
                ),
                Text(
                  "28",
                  style: TextStyle(
                    color: ThemeColors.bottomSheetTitleColor,
                    fontSize: FontProperty.animeSubTitle,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Genres: ",
                    style: TextStyle(
                      color: ThemeColors.bottomSheetTitleColor,
                      fontSize: FontProperty.animeSubTitle,
                    ),
                  ),
                  ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Text(
                        "Drama, ",
                        style: TextStyle(
                          color: ThemeColors.bottomSheetTitleColor,
                          fontSize: FontProperty.animeSubTitle,
                          fontWeight: FontWeight.bold,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
