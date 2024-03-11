// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

class Items extends Equatable {
  final int count;
  final int total;
  final int perPage;
  const Items({
    required this.count,
    required this.total,
    required this.perPage,
  });

  Items copyWith({
    int? count,
    int? total,
    int? perPage,
  }) {
    return Items(
      count: count ?? this.count,
      total: total ?? this.total,
      perPage: perPage ?? this.perPage,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'total': total,
      'per_page': perPage,
    };
  }

  factory Items.fromMap(Map<String, dynamic> map) {
    return Items(
      count: map['count'] as int,
      total: map['total'] as int,
      perPage: map['per_page'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Items.fromJson(String source) =>
      Items.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [count, total, perPage];
}
