// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

class ErrorModel extends Equatable {
  final int status;
  final String type;
  final String message;
  final String? error;
  const ErrorModel({
    required this.status,
    required this.type,
    required this.message,
    required this.error,
  });

  ErrorModel copyWith({
    int? status,
    String? type,
    String? message,
    String? error,
  }) {
    return ErrorModel(
      status: status ?? this.status,
      type: type ?? this.type,
      message: message ?? this.message,
      error: error ?? this.error,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': status,
      'type': type,
      'message': message,
      'error': error,
    };
  }

  factory ErrorModel.fromMap(Map<String, dynamic> map) {
    return ErrorModel(
      status: map['status'] as int,
      type: map['type'] as String,
      message: map['message'] as String,
      error: map['error'] != null ? map['error'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ErrorModel.fromJson(String source) =>
      ErrorModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [status, type, message, error ?? ""];
}
