import 'dart:convert';

import 'package:anime_app/src/domain/model/anime_model/images_model.dart';
import 'package:equatable/equatable.dart';

class Character extends Equatable {
  final int malId;
  final String url;
  final Images images;
  final String name;
  const Character({
    required this.malId,
    required this.url,
    required this.images,
    required this.name,
  });

  Character copyWith({
    int? malId,
    String? url,
    Images? images,
    String? name,
  }) {
    return Character(
      malId: malId ?? this.malId,
      url: url ?? this.url,
      images: images ?? this.images,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mal_id': malId,
      'url': url,
      'images': images.toMap(),
      'name': name,
    };
  }

  factory Character.fromMap(Map<String, dynamic> map) {
    return Character(
      malId: map['mal_id'] as int,
      url: map['url'] as String,
      images: Images.fromMap(map['images'] as Map<String, dynamic>),
      name: map['name'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Character.fromJson(String source) =>
      Character.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [malId, url, images, name];
}
