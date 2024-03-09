// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:anime_app/src/data/datasources/service/service.dart';
import 'package:anime_app/src/domain/model/anime_model/anime_model.dart';
import 'package:anime_app/src/domain/model/error_model.dart';
import 'package:dartz/dartz.dart';

class DogRepo {
  Services service;
  DogRepo({
    required this.service,
  });

  Future<Either<ErrorModel, AnimeModel>> getAnimeList(int page) async {
    try {
      final response = await service.getAnimeList(page);

      return response;
    } catch (e) {
      log(e.toString());
      return const Left(ErrorModel(
          error: 'Bir hata oluştu', message: '', status: 500, type: ''));
    }
  }
}
