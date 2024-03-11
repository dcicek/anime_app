// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:anime_app/src/domain/model/anime_model/prop_model.dart';

class Aired extends Equatable {
  final String? from;
  final String? to;
  final Prop? prop;
  final String? string;
  const Aired({
    this.from,
    this.to,
    this.prop,
    this.string,
  });

  Aired copyWith({
    String? from,
    String? to,
    Prop? prop,
    String? string,
  }) {
    return Aired(
      from: from ?? this.from,
      to: to ?? this.to,
      prop: prop ?? this.prop,
      string: string ?? this.string,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'from': from,
      'to': to,
      'prop': prop?.toMap(),
      'string': string,
    };
  }

  factory Aired.fromMap(Map<String, dynamic> map) {
    return Aired(
      from: map['from'] != null ? map['from'] as String : null,
      to: map['to'] != null ? map['to'] as String : null,
      prop: map['prop'] != null
          ? Prop.fromMap(map['prop'] as Map<String, dynamic>)
          : null,
      string: map['string'] != null ? map['string'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Aired.fromJson(String source) =>
      Aired.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props =>
      [from ?? Object(), to ?? Object(), prop ?? Object(), string ?? Object()];
}
