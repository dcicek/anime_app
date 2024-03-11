// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:anime_app/src/domain/model/anime_model/data_model.dart';
import 'package:anime_app/src/domain/model/anime_model/pagination_model.dart';

class AnimeModel extends Equatable {
  final Pagination pagination;
  List<Data> data;
  AnimeModel({
    required this.pagination,
    required this.data,
  });

  AnimeModel copyWith({
    Pagination? pagination,
    List<Data>? data,
  }) {
    return AnimeModel(
      pagination: pagination ?? this.pagination,
      data: data ?? this.data,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pagination': pagination.toMap(),
      'data': data.map((x) => x.toMap()).toList(),
    };
  }

  factory AnimeModel.fromMap(Map<String, dynamic> map) {
    return AnimeModel(
      pagination: Pagination.fromMap(map['pagination'] as Map<String, dynamic>),
      data: List<Data>.from(
        (map['data'] as List<dynamic>).map<Data>(
          (x) => Data.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory AnimeModel.fromJson(String source) =>
      AnimeModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [pagination, data];
}
