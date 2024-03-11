// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:anime_app/src/domain/model/anime_model/trailer_image_model.dart';
import 'package:equatable/equatable.dart';

class Trailer extends Equatable {
  final String? youtubeId;
  final String? url;
  final String? embedUrl;
  final TrailerImage? images;
  const Trailer({
    this.youtubeId,
    this.url,
    this.embedUrl,
    this.images,
  });

  Trailer copyWith({
    String? youtubeId,
    String? url,
    String? embedUrl,
    TrailerImage? images,
  }) {
    return Trailer(
      youtubeId: youtubeId ?? this.youtubeId,
      url: url ?? this.url,
      embedUrl: embedUrl ?? this.embedUrl,
      images: images ?? this.images,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'youtubeId': youtubeId,
      'url': url,
      'embedUrl': embedUrl,
      'images': images?.toMap(),
    };
  }

  factory Trailer.fromMap(Map<String, dynamic> map) {
    return Trailer(
      youtubeId: map['youtubeId'] != null ? map['youtubeId'] as String : null,
      url: map['url'] != null ? map['url'] as String : null,
      embedUrl: map['embedUrl'] != null ? map['embedUrl'] as String : null,
      images: map['images'] != null
          ? TrailerImage.fromMap(map['images'] as Map<String, dynamic>)
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Trailer.fromJson(String source) =>
      Trailer.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [
        youtubeId ?? Object(),
        url ?? Object(),
        embedUrl ?? Object(),
        images ?? Object()
      ];
}
