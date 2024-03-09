// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

class ErrorModel extends Equatable {
  final String status;
  final String message;
  final int code;
  const ErrorModel({
    required this.status,
    required this.message,
    required this.code,
  });

  ErrorModel copyWith({
    String? status,
    String? message,
    int? code,
  }) {
    return ErrorModel(
      status: status ?? this.status,
      message: message ?? this.message,
      code: code ?? this.code,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': status,
      'message': message,
      'code': code,
    };
  }

  factory ErrorModel.fromMap(Map<String, dynamic> map) {
    return ErrorModel(
      status: map['status'] as String,
      message: map['message'] as String,
      code: map['code'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory ErrorModel.fromJson(String source) =>
      ErrorModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [status, message, code];
}
