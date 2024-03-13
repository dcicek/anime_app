import 'dart:developer';

import 'package:anime_app/src/presentation/bloc/anime_bloc/anime_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NativeBackground {
  static const methodChannel = MethodChannel('com.example.anime_app');

  static handlePlatformChannelMethods(
      BuildContext context, String method) async {
    try {
      String response = await methodChannel.invokeMethod(method);
      if (response == "getAnimeList") {
        context.read<AnimeBloc>().add(GetAnimeList());
      } else {
        context.read<AnimeBloc>().add(GetCharacterList());
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
