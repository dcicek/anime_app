// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:anime_app/src/domain/model/anime_model/anime_model.dart';

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

class CharacterModel extends Equatable {
  final Character character;
  final String role;
  final int? favorites;
  final List<VoiceActors> voiceActors;
  const CharacterModel({
    required this.character,
    required this.role,
    this.favorites,
    required this.voiceActors,
  });

  CharacterModel copyWith({
    Character? character,
    String? role,
    int? favorites,
    List<VoiceActors>? voiceActors,
  }) {
    return CharacterModel(
      character: character ?? this.character,
      role: role ?? this.role,
      favorites: favorites ?? this.favorites,
      voiceActors: voiceActors ?? this.voiceActors,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'character': character.toMap(),
      'role': role,
      'favorites': favorites,
      'voice_actors': voiceActors.map((x) => x.toMap()).toList(),
    };
  }

  factory CharacterModel.fromMap(Map<String, dynamic> map) {
    return CharacterModel(
      character: Character.fromMap(map['character'] as Map<String, dynamic>),
      role: map['role'] as String,
      favorites: map['favorites'] != null ? map['favorites'] as int : null,
      voiceActors: List<VoiceActors>.from(
        (map['voice_actors'] as List<dynamic>).map<VoiceActors>(
          (x) => VoiceActors.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory CharacterModel.fromJson(String source) =>
      CharacterModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [character, role, favorites ?? 0, voiceActors];
}

class PersonImages {
  Jpg? jpg;
  PersonImages({
    this.jpg,
  });

  PersonImages copyWith({
    Jpg? jpg,
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
          ? Jpg.fromMap(map['jpg'] as Map<String, dynamic>)
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory PersonImages.fromJson(String source) =>
      PersonImages.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'PersonImages(jpg: $jpg)';

  @override
  bool operator ==(covariant PersonImages other) {
    if (identical(this, other)) return true;

    return other.jpg == jpg;
  }

  @override
  int get hashCode => jpg.hashCode;
}

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

class VoiceActors extends Equatable {
  final Person person;
  final String language;
  const VoiceActors({
    required this.person,
    required this.language,
  });

  VoiceActors copyWith({
    Person? person,
    String? language,
  }) {
    return VoiceActors(
      person: person ?? this.person,
      language: language ?? this.language,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'person': person.toMap(),
      'language': language,
    };
  }

  factory VoiceActors.fromMap(Map<String, dynamic> map) {
    return VoiceActors(
      person: Person.fromMap(map['person'] as Map<String, dynamic>),
      language: map['language'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory VoiceActors.fromJson(String source) =>
      VoiceActors.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [person, language];
}
