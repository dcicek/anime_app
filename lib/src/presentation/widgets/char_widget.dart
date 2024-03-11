import 'package:anime_app/src/presentation/bloc/anime_bloc/anime_bloc.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class CharacterWidget extends StatelessWidget {
  const CharacterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AnimeBloc, AnimeState>(
      builder: (context, state) {
        return state is AnimeCharLoaded
            ? SizedBox(
                height: 60.h,
                width: double.maxFinite,
                child: ListView.builder(
                  itemCount: state.char.data.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        CachedNetworkImage(
                          imageUrl: state
                              .char.data[index].character.images.jpg.imageUrl!,
                          width: 25.w,
                        ),
                        Text(state.char.data[index].character.name),
                        const SizedBox(
                          height: 16.0,
                        )
                      ],
                    );
                  },
                ),
              )
            : const SizedBox.shrink();
      },
    );
  }
}
