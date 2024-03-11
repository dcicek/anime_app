// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

class ImageType extends Equatable {
  final String? imageUrl;
  final String? smallImageUrl;
  final String? largeImageUrl;
  const ImageType({
    this.imageUrl,
    this.smallImageUrl,
    this.largeImageUrl,
  });

  ImageType copyWith({
    String? imageUrl,
    String? smallImageUrl,
    String? largeImageUrl,
  }) {
    return ImageType(
      imageUrl: imageUrl ?? this.imageUrl,
      smallImageUrl: smallImageUrl ?? this.smallImageUrl,
      largeImageUrl: largeImageUrl ?? this.largeImageUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'image_url': imageUrl,
      'small_image_url': smallImageUrl,
      'large_image_url': largeImageUrl,
    };
  }

  factory ImageType.fromMap(Map<String, dynamic> map) {
    return ImageType(
      imageUrl: map['image_url'] != null ? map['image_url'] as String : null,
      smallImageUrl: map['small_image_url'] != null
          ? map['small_image_url'] as String
          : null,
      largeImageUrl: map['large_image_url'] != null
          ? map['large_image_url'] as String
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ImageType.fromJson(String source) =>
      ImageType.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [
        imageUrl ?? Object(),
        smallImageUrl ?? Object(),
        largeImageUrl ?? Object()
      ];
}
