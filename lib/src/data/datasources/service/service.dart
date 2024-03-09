import 'dart:convert';
import 'dart:developer';

import 'package:anime_app/src/data/datasources/api_connection.dart';
import 'package:anime_app/src/domain/model/anime_model/anime_model.dart';
import 'package:anime_app/src/domain/model/error_model.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

class Services {
  Future<Either<ErrorModel, AnimeModel>> getAnimeList(int page) async {
    try {
      final response = await http
          .get(Uri.parse('${ApiConnection.apiInfo}top/anime?page=$page'));

      switch (response.statusCode) {
        case 200:
          return Right(AnimeModel.fromJson(response.body));
        default:
          return Left(ErrorModel.fromJson(response.body));
      }
    } catch (e) {
      return Left(ErrorModel(
          error: "", message: 'Bir sorun oluştu.', status: 0, type: ''));
    }
  }
}
