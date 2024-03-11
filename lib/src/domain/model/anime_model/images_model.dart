// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:anime_app/src/domain/model/anime_model/image_type_model.dart';
import 'package:equatable/equatable.dart';

class Images extends Equatable {
  final ImageType jpg;
  final ImageType webp;
  const Images({
    required this.jpg,
    required this.webp,
  });

  Images copyWith({
    ImageType? jpg,
    ImageType? webp,
  }) {
    return Images(
      jpg: jpg ?? this.jpg,
      webp: webp ?? this.webp,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jpg': jpg.toMap(),
      'webp': webp.toMap(),
    };
  }

  factory Images.fromMap(Map<String, dynamic> map) {
    return Images(
      jpg: ImageType.fromMap(map['jpg'] as Map<String, dynamic>),
      webp: ImageType.fromMap(map['webp'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory Images.fromJson(String source) =>
      Images.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [jpg, webp];
}
