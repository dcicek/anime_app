// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

class CustomModel extends Equatable {
  final int? malId;
  final String? type;
  final String? name;
  final String? url;
  const CustomModel({
    this.malId,
    this.type,
    this.name,
    this.url,
  });

  CustomModel copyWith({
    int? malId,
    String? type,
    String? name,
    String? url,
  }) {
    return CustomModel(
      malId: malId ?? this.malId,
      type: type ?? this.type,
      name: name ?? this.name,
      url: url ?? this.url,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mal_id': malId,
      'type': type,
      'name': name,
      'url': url,
    };
  }

  factory CustomModel.fromMap(Map<String, dynamic> map) {
    return CustomModel(
      malId: map['mal_id'] != null ? map['mal_id'] as int : null,
      type: map['type'] != null ? map['type'] as String : null,
      name: map['name'] != null ? map['name'] as String : null,
      url: map['url'] != null ? map['url'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory CustomModel.fromJson(String source) =>
      CustomModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props =>
      [malId ?? Object(), type ?? Object(), name ?? Object(), url ?? Object()];
}
