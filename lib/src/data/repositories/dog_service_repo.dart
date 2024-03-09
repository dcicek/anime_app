// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:anime_app/src/data/datasources/service/service.dart';
import 'package:anime_app/src/domain/model/error_model.dart';
import 'package:dartz/dartz.dart';

class DogRepo {
  Services service;
  DogRepo({
    required this.service,
  });

  Future<Either<ErrorModel, Map<String, dynamic>>> getBreeds() async {
    try {
      final response = await service.getBreeds();

      return response;
    } catch (e) {
      log(e.toString());
      return const Left(ErrorModel(
          message: "Beklenmedik bir hata oluştu.", status: 'false', code: 500));
    }
  }
}
