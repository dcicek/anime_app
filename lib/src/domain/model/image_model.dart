// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

class ImageModel extends Equatable {
  final String message;
  final String status;
  const ImageModel({
    required this.message,
    required this.status,
  });

  ImageModel copyWith({
    String? message,
    String? success,
  }) {
    return ImageModel(
      message: message ?? this.message,
      status: success ?? this.status,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': message,
      'status': status,
    };
  }

  factory ImageModel.fromMap(Map<String, dynamic> map) {
    return ImageModel(
      message: map['message'] as String,
      status: map['status'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ImageModel.fromJson(String source) =>
      ImageModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [message, status];
}
