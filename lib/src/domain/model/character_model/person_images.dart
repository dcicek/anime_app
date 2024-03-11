// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:anime_app/src/domain/model/anime_model/image_type_model.dart';

class PersonImages extends Equatable {
  final ImageType? jpg;
  const PersonImages({
    this.jpg,
  });

  PersonImages copyWith({
    ImageType? jpg,
  }) {
    return PersonImages(
      jpg: jpg ?? this.jpg,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jpg': jpg?.toMap(),
    };
  }

  factory PersonImages.fromMap(Map<String, dynamic> map) {
    return PersonImages(
      jpg: map['jpg'] != null
          ? ImageType.fromMap(map['jpg'] as Map<String, dynamic>)
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory PersonImages.fromJson(String source) =>
      PersonImages.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [jpg ?? Object()];
}
