import 'dart:convert';
import 'dart:developer';

import 'package:anime_app/src/data/datasources/api_connection.dart';
import 'package:anime_app/src/domain/model/error_model.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

class Services {
  Future<Either<ErrorModel, Map<String, dynamic>>> getBreeds() async {
    final response =
        await http.get(Uri.parse('${ApiConnection.apiInfo}breeds/list/all'));

    Map<String, List<dynamic>> list = {};

    Map<String, dynamic> data = json.decode(response.body);

    data.forEach((key, value) {
      list[key] = value is List ? value : [value];
    });

    switch (response.statusCode) {
      case 200:
        return Right(data);
      default:
        return Left(ErrorModel.fromJson(response.body));
    }
  }
}
