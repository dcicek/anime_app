// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:anime_app/src/domain/model/anime_model/aired_model.dart';
import 'package:anime_app/src/domain/model/anime_model/broadcast_model.dart';
import 'package:anime_app/src/domain/model/anime_model/custom_model.dart';
import 'package:anime_app/src/domain/model/anime_model/images_model.dart';
import 'package:anime_app/src/domain/model/anime_model/titles_model.dart';
import 'package:anime_app/src/domain/model/anime_model/trailer_model.dart';

class Data extends Equatable {
  final int malId;
  final String url;
  final Images images;
  final Trailer trailer;
  final bool approved;
  final List<Titles> titles;
  final String title;
  final String? titleEnglish;
  final String? titleJapanese;
  final String? type;
  final String? source;
  final int? episodes;
  final String status;
  final bool airing;
  final Aired? aired;
  final String duration;
  final String rating;
  final double? score;
  final int? scoredBy;
  final int? rank;
  final int? popularity;
  final int? members;
  final int? favorites;
  final String? synopsis;
  final String? background;
  final String? season;
  final int? year;
  final Broadcast? broadcast;
  final List<CustomModel> producers;
  final List<CustomModel> licensors;
  final List<CustomModel> studios;
  final List<CustomModel> genres;
  final List<dynamic>? explicitGenres;
  final List<CustomModel> themes;
  final List<CustomModel> demographics;
  const Data({
    required this.malId,
    required this.url,
    required this.images,
    required this.trailer,
    required this.approved,
    required this.titles,
    required this.title,
    this.titleEnglish,
    this.titleJapanese,
    this.type,
    this.source,
    required this.episodes,
    required this.status,
    required this.airing,
    this.aired,
    required this.duration,
    required this.rating,
    this.score,
    this.scoredBy,
    this.rank,
    this.popularity,
    this.members,
    this.favorites,
    this.synopsis,
    this.background,
    this.season,
    this.year,
    this.broadcast,
    required this.producers,
    required this.licensors,
    required this.studios,
    required this.genres,
    this.explicitGenres,
    required this.themes,
    required this.demographics,
  });

  Data copyWith({
    int? malId,
    String? url,
    Images? images,
    Trailer? trailer,
    bool? approved,
    List<Titles>? titles,
    String? title,
    String? titleEnglish,
    String? titleJapanese,
    String? type,
    String? source,
    int? episodes,
    String? status,
    bool? airing,
    Aired? aired,
    String? duration,
    String? rating,
    double? score,
    int? scoredBy,
    int? rank,
    int? popularity,
    int? members,
    int? favorites,
    String? synopsis,
    String? background,
    String? season,
    int? year,
    Broadcast? broadcast,
    List<CustomModel>? producers,
    List<CustomModel>? licensors,
    List<CustomModel>? studios,
    List<CustomModel>? genres,
    List<String>? explicitGenres,
    List<CustomModel>? themes,
    List<CustomModel>? demographics,
  }) {
    return Data(
      malId: malId ?? this.malId,
      url: url ?? this.url,
      images: images ?? this.images,
      trailer: trailer ?? this.trailer,
      approved: approved ?? this.approved,
      titles: titles ?? this.titles,
      title: title ?? this.title,
      titleEnglish: titleEnglish ?? this.titleEnglish,
      titleJapanese: titleJapanese ?? this.titleJapanese,
      type: type ?? this.type,
      source: source ?? this.source,
      episodes: episodes ?? this.episodes,
      status: status ?? this.status,
      airing: airing ?? this.airing,
      aired: aired ?? this.aired,
      duration: duration ?? this.duration,
      rating: rating ?? this.rating,
      score: score ?? this.score,
      scoredBy: scoredBy ?? this.scoredBy,
      rank: rank ?? this.rank,
      popularity: popularity ?? this.popularity,
      members: members ?? this.members,
      favorites: favorites ?? this.favorites,
      synopsis: synopsis ?? this.synopsis,
      background: background ?? this.background,
      season: season ?? this.season,
      year: year ?? this.year,
      broadcast: broadcast ?? this.broadcast,
      producers: producers ?? this.producers,
      licensors: licensors ?? this.licensors,
      studios: studios ?? this.studios,
      genres: genres ?? this.genres,
      explicitGenres: explicitGenres ?? this.explicitGenres,
      themes: themes ?? this.themes,
      demographics: demographics ?? this.demographics,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mal_id': malId,
      'url': url,
      'images': images.toMap(),
      'trailer': trailer.toMap(),
      'approved': approved,
      'titles': titles.map((x) => x.toMap()).toList(),
      'title': title,
      'title_english': titleEnglish,
      'title_japanese': titleJapanese,
      'type': type,
      'source': source,
      'episodes': episodes,
      'status': status,
      'airing': airing,
      'aired': aired?.toMap(),
      'duration': duration,
      'rating': rating,
      'score': score,
      'scored_by': scoredBy,
      'rank': rank,
      'popularity': popularity,
      'members': members,
      'favorites': favorites,
      'synopsis': synopsis,
      'background': background,
      'season': season,
      'year': year,
      'broadcast': broadcast?.toMap(),
      'producers': producers.map((x) => x.toMap()).toList(),
      'licensors': licensors.map((x) => x.toMap()).toList(),
      'studios': studios.map((x) => x.toMap()).toList(),
      'genres': genres.map((x) => x.toMap()).toList(),
      'explicit_genres': explicitGenres,
      'themes': themes.map((x) => x.toMap()).toList(),
      'demographics': demographics.map((x) => x.toMap()).toList(),
    };
  }

  factory Data.fromMap(Map<String, dynamic> map) {
    return Data(
      malId: map['mal_id'] as int,
      url: map['url'] as String,
      images: Images.fromMap(map['images'] as Map<String, dynamic>),
      trailer: Trailer.fromMap(map['trailer'] as Map<String, dynamic>),
      approved: map['approved'] as bool,
      titles: List<Titles>.from(
        (map['titles'] as List<dynamic>).map<Titles>(
          (x) => Titles.fromMap(x as Map<String, dynamic>),
        ),
      ),
      title: map['title'] as String,
      titleEnglish:
          map['title_english'] != null ? map['title_english'] as String : null,
      titleJapanese: map['title_japanese'] != null
          ? map['title_japanese'] as String
          : null,
      type: map['type'] != null ? map['type'] as String : null,
      source: map['source'] != null ? map['source'] as String : null,
      episodes: map['episodes'] != null ? map['episodes'] as int : null,
      status: map['status'] as String,
      airing: map['airing'] as bool,
      aired: map['aired'] != null
          ? Aired.fromMap(map['aired'] as Map<String, dynamic>)
          : null,
      duration: map['duration'] as String,
      rating: map['rating'] as String,
      score: map['score'] != null ? map['score'] as double : null,
      scoredBy: map['scored_by'] != null ? map['scored_by'] as int : null,
      rank: map['rank'] != null ? map['rank'] as int : null,
      popularity: map['popularity'] != null ? map['popularity'] as int : null,
      members: map['members'] != null ? map['members'] as int : null,
      favorites: map['favorites'] != null ? map['favorites'] as int : null,
      synopsis: map['synopsis'] != null ? map['synopsis'] as String : null,
      background:
          map['background'] != null ? map['background'] as String : null,
      season: map['season'] != null ? map['season'] as String : null,
      year: map['year'] != null ? map['year'] as int : null,
      broadcast: map['broadcast'] != null
          ? Broadcast.fromMap(map['broadcast'] as Map<String, dynamic>)
          : null,
      producers: List<CustomModel>.from(
        (map['producers'] as List<dynamic>).map<CustomModel>(
          (x) => CustomModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
      licensors: List<CustomModel>.from(
        (map['licensors'] as List<dynamic>).map<CustomModel>(
          (x) => CustomModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
      studios: List<CustomModel>.from(
        (map['studios'] as List<dynamic>).map<CustomModel>(
          (x) => CustomModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
      genres: List<CustomModel>.from(
        (map['genres'] as List<dynamic>).map<CustomModel>(
          (x) => CustomModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
      explicitGenres: map['explicit_genres'] != null
          ? List<dynamic>.from((map['explicit_genres'] as List<dynamic>))
          : null,
      themes: List<CustomModel>.from(
        (map['themes'] as List<dynamic>).map<CustomModel>(
          (x) => CustomModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
      demographics: List<CustomModel>.from(
        (map['demographics'] as List<dynamic>).map<CustomModel>(
          (x) => CustomModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory Data.fromJson(String source) =>
      Data.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      malId,
      url,
      images,
      trailer,
      approved,
      titles,
      title,
      titleEnglish ?? Object(),
      titleJapanese ?? Object(),
      type ?? Object(),
      source ?? Object(),
      episodes ?? Object(),
      status,
      airing,
      aired ?? Object(),
      duration,
      rating,
      score ?? Object(),
      scoredBy ?? Object(),
      rank ?? Object(),
      popularity ?? Object(),
      members ?? Object(),
      favorites ?? Object(),
      synopsis ?? Object(),
      background ?? Object(),
      season ?? Object(),
      year ?? Object(),
      broadcast ?? Object(),
      producers,
      licensors,
      studios,
      genres,
      explicitGenres ?? Object(),
      themes,
      demographics,
    ];
  }
}
