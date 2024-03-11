import 'dart:convert';

import 'package:anime_app/src/domain/model/character_model/person_images.dart';
import 'package:equatable/equatable.dart';

class Person extends Equatable {
  final int malId;
  final String url;
  final PersonImages images;
  final String name;
  const Person({
    required this.malId,
    required this.url,
    required this.images,
    required this.name,
  });

  Person copyWith({
    int? malId,
    String? url,
    PersonImages? images,
    String? name,
  }) {
    return Person(
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

  factory Person.fromMap(Map<String, dynamic> map) {
    return Person(
      malId: map['mal_id'] as int,
      url: map['url'] as String,
      images: PersonImages.fromMap(map['images'] as Map<String, dynamic>),
      name: map['name'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Person.fromJson(String source) =>
      Person.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [malId, url, images, name];
}
