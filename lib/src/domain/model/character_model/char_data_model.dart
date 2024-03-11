import 'dart:convert';

import 'package:anime_app/src/domain/model/character_model/character_model.dart';
import 'package:equatable/equatable.dart';

class CharData extends Equatable {
  final List<CharacterModel> data;
  const CharData({
    required this.data,
  });

  CharData copyWith({
    List<CharacterModel>? data,
  }) {
    return CharData(
      data: data ?? this.data,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': data.map((x) => x.toMap()).toList(),
    };
  }

  factory CharData.fromMap(Map<String, dynamic> map) {
    return CharData(
      data: List<CharacterModel>.from(
        (map['data'] as List<dynamic>).map<CharacterModel>(
          (x) => CharacterModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory CharData.fromJson(String source) =>
      CharData.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [data];
}
