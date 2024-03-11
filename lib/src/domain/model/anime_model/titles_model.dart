// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

class Titles extends Equatable {
  final String type;
  final String title;
  const Titles({
    required this.type,
    required this.title,
  });

  Titles copyWith({
    String? type,
    String? title,
  }) {
    return Titles(
      type: type ?? this.type,
      title: title ?? this.title,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'title': title,
    };
  }

  factory Titles.fromMap(Map<String, dynamic> map) {
    return Titles(
      type: map['type'] as String,
      title: map['title'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Titles.fromJson(String source) =>
      Titles.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [type, title];
}
