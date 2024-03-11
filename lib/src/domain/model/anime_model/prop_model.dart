// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:anime_app/src/domain/model/anime_model/from_model.dart';

class Prop extends Equatable {
  final From? from;
  final From? to;
  const Prop({
    this.from,
    this.to,
  });

  Prop copyWith({
    From? from,
    From? to,
  }) {
    return Prop(
      from: from ?? this.from,
      to: to ?? this.to,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'from': from?.toMap(),
      'to': to?.toMap(),
    };
  }

  factory Prop.fromMap(Map<String, dynamic> map) {
    return Prop(
      from: map['from'] != null
          ? From.fromMap(map['from'] as Map<String, dynamic>)
          : null,
      to: map['to'] != null
          ? From.fromMap(map['to'] as Map<String, dynamic>)
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Prop.fromJson(String source) =>
      Prop.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [from ?? Object(), to ?? Object()];
}
