// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

class From extends Equatable {
  final int? day;
  final int? month;
  final int? year;
  const From({
    this.day,
    this.month,
    this.year,
  });

  From copyWith({
    int? day,
    int? month,
    int? year,
  }) {
    return From(
      day: day ?? this.day,
      month: month ?? this.month,
      year: year ?? this.year,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'day': day,
      'month': month,
      'year': year,
    };
  }

  factory From.fromMap(Map<String, dynamic> map) {
    return From(
      day: map['day'] != null ? map['day'] as int : null,
      month: map['month'] != null ? map['month'] as int : null,
      year: map['year'] != null ? map['year'] as int : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory From.fromJson(String source) =>
      From.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props =>
      [day ?? Object(), month ?? Object(), year ?? Object()];
}
