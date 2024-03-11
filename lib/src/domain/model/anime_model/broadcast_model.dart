// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

class Broadcast extends Equatable {
  final String? day;
  final String? time;
  final String? timezone;
  final String? string;
  const Broadcast({
    this.day,
    this.time,
    this.timezone,
    this.string,
  });

  Broadcast copyWith({
    String? day,
    String? time,
    String? timezone,
    String? string,
  }) {
    return Broadcast(
      day: day ?? this.day,
      time: time ?? this.time,
      timezone: timezone ?? this.timezone,
      string: string ?? this.string,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'day': day,
      'time': time,
      'timezone': timezone,
      'string': string,
    };
  }

  factory Broadcast.fromMap(Map<String, dynamic> map) {
    return Broadcast(
      day: map['day'] != null ? map['day'] as String : null,
      time: map['time'] != null ? map['time'] as String : null,
      timezone: map['timezone'] != null ? map['timezone'] as String : null,
      string: map['string'] != null ? map['string'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Broadcast.fromJson(String source) =>
      Broadcast.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [
        day ?? Object(),
        time ?? Object(),
        timezone ?? Object(),
        string ?? Object()
      ];
}
