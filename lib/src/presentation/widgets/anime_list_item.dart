import 'package:anime_app/src/config/theme/colors.dart';
import 'package:anime_app/src/config/theme/font_property.dart';
import 'package:anime_app/src/domain/model/anime_model/anime_model.dart';
import 'package:anime_app/src/presentation/bloc/anime_bloc/anime_bloc.dart';
import 'package:anime_app/src/presentation/widgets/anime_detail.dart';
import 'package:anime_app/src/presentation/widgets/bottom_sheet.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnimeListItem extends StatelessWidget {
  final Data anime;
  const AnimeListItem({super.key, required this.anime});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GestureDetector(
        onTap: () {
          context.read<AnimeBloc>().add(SelectAnime(selectedAnime: anime));
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
                    imageUrl: anime.images!.jpg!.imageUrl!,
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        anime.title.toString(),
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
                            anime.score.toString(),
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
