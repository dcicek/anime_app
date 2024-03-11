import 'dart:convert';

import 'package:anime_app/src/domain/model/character_model/person_model.dart';
import 'package:equatable/equatable.dart';

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
