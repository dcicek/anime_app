// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

class TrailerImage extends Equatable {
  final String? imageUrl;
  final String? smallImageUrl;
  final String? mediumImageUrl;
  final String? largeImageUrl;
  final String? maximumImageUrl;
  const TrailerImage({
    this.imageUrl,
    this.smallImageUrl,
    this.mediumImageUrl,
    this.largeImageUrl,
    this.maximumImageUrl,
  });

  TrailerImage copyWith({
    String? imageUrl,
    String? smallImageUrl,
    String? mediumImageUrl,
    String? largeImageUrl,
    String? maximumImageUrl,
  }) {
    return TrailerImage(
      imageUrl: imageUrl ?? this.imageUrl,
      smallImageUrl: smallImageUrl ?? this.smallImageUrl,
      mediumImageUrl: mediumImageUrl ?? this.mediumImageUrl,
      largeImageUrl: largeImageUrl ?? this.largeImageUrl,
      maximumImageUrl: maximumImageUrl ?? this.maximumImageUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageUrl': imageUrl,
      'smallImageUrl': smallImageUrl,
      'mediumImageUrl': mediumImageUrl,
      'largeImageUrl': largeImageUrl,
      'maximumImageUrl': maximumImageUrl,
    };
  }

  factory TrailerImage.fromMap(Map<String, dynamic> map) {
    return TrailerImage(
      imageUrl: map['imageUrl'] != null ? map['imageUrl'] as String : null,
      smallImageUrl:
          map['smallImageUrl'] != null ? map['smallImageUrl'] as String : null,
      mediumImageUrl: map['mediumImageUrl'] != null
          ? map['mediumImageUrl'] as String
          : null,
      largeImageUrl:
          map['largeImageUrl'] != null ? map['largeImageUrl'] as String : null,
      maximumImageUrl: map['maximumImageUrl'] != null
          ? map['maximumImageUrl'] as String
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory TrailerImage.fromJson(String source) =>
      TrailerImage.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      imageUrl ?? Object(),
      smallImageUrl ?? Object(),
      mediumImageUrl ?? Object(),
      largeImageUrl ?? Object(),
      maximumImageUrl ?? Object(),
    ];
  }
}
