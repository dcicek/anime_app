import 'package:anime_app/src/presentation/bloc/anime_bloc/anime_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NativeBackground {
  final methodChannel = const MethodChannel('com.example.anime_app');

  invokeGetAnimeList() {
    methodChannel.invokeMethod('getAnimeList');
  }

  invokeGetCharacterList() {
    methodChannel.invokeMethod('getAnimeList');
  }

  handlePlatformChannelMethods(BuildContext context) async {
    methodChannel.setMethodCallHandler((methodCall) async {
      if (methodCall.method == "getAnimeList") {
        context.read<AnimeBloc>().add(GetAnimeList());
      } else if (methodChannel.name == "getCharacterList") {
        context.read<AnimeBloc>().add(GetCharacterList());
      }
    });
  }
}
