// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:anime_app/src/domain/model/character_model/character.dart';
import 'package:anime_app/src/domain/model/character_model/voice_actors_model.dart';
import 'package:equatable/equatable.dart';

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
