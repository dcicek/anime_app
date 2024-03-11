import 'dart:developer';

import 'package:anime_app/src/presentation/bloc/anime_bloc/anime_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NativeBackground {
  static const methodChannel = MethodChannel('com.example.anime_app');

  static invokeGetAnimeList() async {
    String a = await methodChannel.invokeMethod('getAnimeList');
    print(a);
  }

  static invokeGetCharacterList() async {
    await methodChannel.invokeMethod('getCharacterList');
  }

  static void handleCityChanges() {
    const EventChannel _stream = EventChannel('com.example.anime_app');
    _stream.receiveBroadcastStream().listen(
      (data) {
        print(data);
      },
    );
  }

  static handlePlatformChannelMethods(BuildContext context) async {
    try {
      methodChannel.setMethodCallHandler((methodCall) async {
        if (methodCall.method == "getAnimeList") {
          context.read<AnimeBloc>().add(GetAnimeList());
        } else if (methodCall.method == "getCharacterList") {
          context.read<AnimeBloc>().add(GetCharacterList());
        }
      });
    } catch (e) {
      log(e.toString());
    }
  }
}
