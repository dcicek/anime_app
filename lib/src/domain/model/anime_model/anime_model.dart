// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class AnimeModel {
  Pagination? pagination;
  List<Data>? data;
  AnimeModel({
    this.pagination,
    this.data,
  });

  AnimeModel copyWith({
    Pagination? pagination,
    List<Data>? data,
  }) {
    return AnimeModel(
      pagination: pagination ?? this.pagination,
      data: data ?? this.data,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pagination': pagination?.toMap(),
      'data': data?.map((x) => x.toMap()).toList(),
    };
  }

  factory AnimeModel.fromMap(Map<String, dynamic> map) {
    return AnimeModel(
      pagination: map['pagination'] != null
          ? Pagination.fromMap(map['pagination'] as Map<String, dynamic>)
          : null,
      data: map['data'] != null
          ? List<Data>.from(
              (map['data'] as List<dynamic>).map<Data?>(
                (x) => Data.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory AnimeModel.fromJson(String source) =>
      AnimeModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'AnimeModel(pagination: $pagination, data: $data)';

  @override
  bool operator ==(covariant AnimeModel other) {
    if (identical(this, other)) return true;

    return other.pagination == pagination && listEquals(other.data, data);
  }

  @override
  int get hashCode => pagination.hashCode ^ data.hashCode;
}

class Pagination {
  int? lastVisiblePage;
  bool? hasNextPage;
  int? currentPage;
  Items? items;
  Pagination({
    this.lastVisiblePage,
    this.hasNextPage,
    this.currentPage,
    this.items,
  });

  Pagination copyWith({
    int? lastVisiblePage,
    bool? hasNextPage,
    int? currentPage,
    Items? items,
  }) {
    return Pagination(
      lastVisiblePage: lastVisiblePage ?? this.lastVisiblePage,
      hasNextPage: hasNextPage ?? this.hasNextPage,
      currentPage: currentPage ?? this.currentPage,
      items: items ?? this.items,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastVisiblePage': lastVisiblePage,
      'hasNextPage': hasNextPage,
      'currentPage': currentPage,
      'items': items?.toMap(),
    };
  }

  factory Pagination.fromMap(Map<String, dynamic> map) {
    return Pagination(
      lastVisiblePage: map['last_visible_page'] != null
          ? map['last_visible_page'] as int
          : null,
      hasNextPage:
          map['has_next_page'] != null ? map['has_next_page'] as bool : null,
      currentPage:
          map['current_page'] != null ? map['current_page'] as int : null,
      items: map['items'] != null
          ? Items.fromMap(map['items'] as Map<String, dynamic>)
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Pagination.fromJson(String source) =>
      Pagination.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Pagination(lastVisiblePage: $lastVisiblePage, hasNextPage: $hasNextPage, currentPage: $currentPage, items: $items)';
  }

  @override
  bool operator ==(covariant Pagination other) {
    if (identical(this, other)) return true;

    return other.lastVisiblePage == lastVisiblePage &&
        other.hasNextPage == hasNextPage &&
        other.currentPage == currentPage &&
        other.items == items;
  }

  @override
  int get hashCode {
    return lastVisiblePage.hashCode ^
        hasNextPage.hashCode ^
        currentPage.hashCode ^
        items.hashCode;
  }
}

class Items {
  int? count;
  int? total;
  int? perPage;
  Items({
    this.count,
    this.total,
    this.perPage,
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
      count: map['count'] != null ? map['count'] as int : null,
      total: map['total'] != null ? map['total'] as int : null,
      perPage: map['per_page'] != null ? map['per_page'] as int : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Items.fromJson(String source) =>
      Items.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Items(count: $count, total: $total, perPage: $perPage)';

  @override
  bool operator ==(covariant Items other) {
    if (identical(this, other)) return true;

    return other.count == count &&
        other.total == total &&
        other.perPage == perPage;
  }

  @override
  int get hashCode => count.hashCode ^ total.hashCode ^ perPage.hashCode;
}

class Data {
  int? malId;
  String? url;
  Images? images;
  Trailer? trailer;
  bool? approved;
  List<Titles>? titles;
  String? title;
  String? titleEnglish;
  String? titleJapanese;
  List<dynamic>? titleSynonyms;
  String? type;
  String? source;
  int? episodes;
  String? status;
  bool? airing;
  Aired? aired;
  String? duration;
  String? rating;
  double? score;
  int? scoredBy;
  int? rank;
  int? popularity;
  int? members;
  int? favorites;
  String? synopsis;
  String? background;
  String? season;
  int? year;
  Broadcast? broadcast;
  List<Producers>? producers;
  List<Licensors>? licensors;
  List<Studios>? studios;
  List<Genres>? genres;
  List<Null>? explicitGenres;
  List<Themes>? themes;
  List<Demographics>? demographics;
  Data({
    this.malId,
    this.url,
    this.images,
    this.trailer,
    this.approved,
    this.titles,
    this.title,
    this.titleEnglish,
    this.titleJapanese,
    this.titleSynonyms,
    this.type,
    this.source,
    this.episodes,
    this.status,
    this.airing,
    this.aired,
    this.duration,
    this.rating,
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
    this.producers,
    this.licensors,
    this.studios,
    this.genres,
    this.explicitGenres,
    this.themes,
    this.demographics,
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
    List<String>? titleSynonyms,
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
    List<Producers>? producers,
    List<Licensors>? licensors,
    List<Studios>? studios,
    List<Genres>? genres,
    List<Themes>? themes,
    List<Demographics>? demographics,
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
      titleSynonyms: titleSynonyms ?? this.titleSynonyms,
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
      themes: themes ?? this.themes,
      demographics: demographics ?? this.demographics,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mal_id': malId,
      'url': url,
      'images': images?.toMap(),
      'trailer': trailer?.toMap(),
      'approved': approved,
      'titles': titles?.map((x) => x.toMap()).toList(),
      'title': title,
      'title_english': titleEnglish,
      'title_japanese': titleJapanese,
      'title_synonyms': titleSynonyms,
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
      'producers': producers?.map((x) => x.toMap()).toList(),
      'licensors': licensors?.map((x) => x.toMap()).toList(),
      'studios': studios?.map((x) => x.toMap()).toList(),
      'genres': genres?.map((x) => x.toMap()).toList(),
      'themes': themes?.map((x) => x.toMap()).toList(),
      'demographics': demographics?.map((x) => x.toMap()).toList(),
    };
  }

  factory Data.fromMap(Map<String, dynamic> map) {
    return Data(
      malId: map['mal_id'] != null ? map['mal_id'] as int : null,
      url: map['url'] != null ? map['url'] as String : null,
      images: map['images'] != null
          ? Images.fromMap(map['images'] as Map<String, dynamic>)
          : null,
      trailer: map['trailer'] != null
          ? Trailer.fromMap(map['trailer'] as Map<String, dynamic>)
          : null,
      approved: map['approved'] != null ? map['approved'] as bool : null,
      titles: map['titles'] != null
          ? List<Titles>.from(
              (map['titles'] as List<dynamic>).map<Titles?>(
                (x) => Titles.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
      title: map['title'] != null ? map['title'] as String : null,
      titleEnglish:
          map['title_english'] != null ? map['title_english'] as String : null,
      titleJapanese: map['title_japanese'] != null
          ? map['title_japanese'] as String
          : null,
      titleSynonyms: map['title_synonyms'] != null
          ? List<dynamic>.from((map['title_synonyms'] as List<dynamic>))
          : null,
      type: map['type'] != null ? map['type'] as String : null,
      source: map['source'] != null ? map['source'] as String : null,
      episodes: map['episodes'] != null ? map['episodes'] as int : null,
      status: map['status'] != null ? map['status'] as String : null,
      airing: map['airing'] != null ? map['airing'] as bool : null,
      aired: map['aired'] != null
          ? Aired.fromMap(map['aired'] as Map<String, dynamic>)
          : null,
      duration: map['duration'] != null ? map['duration'] as String : null,
      rating: map['rating'] != null ? map['rating'] as String : null,
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
      producers: map['producers'] != null
          ? List<Producers>.from(
              (map['producers'] as List<dynamic>).map<Producers?>(
                (x) => Producers.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
      licensors: map['licensors'] != null
          ? List<Licensors>.from(
              (map['licensors'] as List<dynamic>).map<Licensors?>(
                (x) => Licensors.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
      studios: map['studios'] != null
          ? List<Studios>.from(
              (map['studios'] as List<dynamic>).map<Studios?>(
                (x) => Studios.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
      genres: map['genres'] != null
          ? List<Genres>.from(
              (map['genres'] as List<dynamic>).map<Genres?>(
                (x) => Genres.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
      themes: map['themes'] != null
          ? List<Themes>.from(
              (map['themes'] as List<dynamic>).map<Themes?>(
                (x) => Themes.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
      demographics: map['demographics'] != null
          ? List<Demographics>.from(
              (map['demographics'] as List<dynamic>).map<Demographics?>(
                (x) => Demographics.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Data.fromJson(String source) =>
      Data.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Data(malId: $malId, url: $url, images: $images, trailer: $trailer, approved: $approved, titles: $titles, title: $title, titleEnglish: $titleEnglish, titleJapanese: $titleJapanese, titleSynonyms: $titleSynonyms, type: $type, source: $source, episodes: $episodes, status: $status, airing: $airing, aired: $aired, duration: $duration, rating: $rating, score: $score, scoredBy: $scoredBy, rank: $rank, popularity: $popularity, members: $members, favorites: $favorites, synopsis: $synopsis, background: $background, season: $season, year: $year, broadcast: $broadcast, producers: $producers, licensors: $licensors, studios: $studios, genres: $genres, explicitGenres: $explicitGenres, themes: $themes, demographics: $demographics)';
  }

  @override
  bool operator ==(covariant Data other) {
    if (identical(this, other)) return true;

    return other.malId == malId &&
        other.url == url &&
        other.images == images &&
        other.trailer == trailer &&
        other.approved == approved &&
        listEquals(other.titles, titles) &&
        other.title == title &&
        other.titleEnglish == titleEnglish &&
        other.titleJapanese == titleJapanese &&
        listEquals(other.titleSynonyms, titleSynonyms) &&
        other.type == type &&
        other.source == source &&
        other.episodes == episodes &&
        other.status == status &&
        other.airing == airing &&
        other.aired == aired &&
        other.duration == duration &&
        other.rating == rating &&
        other.score == score &&
        other.scoredBy == scoredBy &&
        other.rank == rank &&
        other.popularity == popularity &&
        other.members == members &&
        other.favorites == favorites &&
        other.synopsis == synopsis &&
        other.background == background &&
        other.season == season &&
        other.year == year &&
        other.broadcast == broadcast &&
        listEquals(other.producers, producers) &&
        listEquals(other.licensors, licensors) &&
        listEquals(other.studios, studios) &&
        listEquals(other.genres, genres) &&
        listEquals(other.explicitGenres, explicitGenres) &&
        listEquals(other.themes, themes) &&
        listEquals(other.demographics, demographics);
  }

  @override
  int get hashCode {
    return malId.hashCode ^
        url.hashCode ^
        images.hashCode ^
        trailer.hashCode ^
        approved.hashCode ^
        titles.hashCode ^
        title.hashCode ^
        titleEnglish.hashCode ^
        titleJapanese.hashCode ^
        titleSynonyms.hashCode ^
        type.hashCode ^
        source.hashCode ^
        episodes.hashCode ^
        status.hashCode ^
        airing.hashCode ^
        aired.hashCode ^
        duration.hashCode ^
        rating.hashCode ^
        score.hashCode ^
        scoredBy.hashCode ^
        rank.hashCode ^
        popularity.hashCode ^
        members.hashCode ^
        favorites.hashCode ^
        synopsis.hashCode ^
        background.hashCode ^
        season.hashCode ^
        year.hashCode ^
        broadcast.hashCode ^
        producers.hashCode ^
        licensors.hashCode ^
        studios.hashCode ^
        genres.hashCode ^
        explicitGenres.hashCode ^
        themes.hashCode ^
        demographics.hashCode;
  }
}

class Demographics {
  int? mal_id;
  String? type;
  String? namex;
  String? url;
  Demographics({
    this.mal_id,
    this.type,
    this.namex,
    this.url,
  });

  Demographics copyWith({
    int? mal_id,
    String? type,
    String? namex,
    String? url,
  }) {
    return Demographics(
      mal_id: mal_id ?? this.mal_id,
      type: type ?? this.type,
      namex: namex ?? this.namex,
      url: url ?? this.url,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mal_id': mal_id,
      'type': type,
      'namex': namex,
      'url': url,
    };
  }

  factory Demographics.fromMap(Map<String, dynamic> map) {
    return Demographics(
      mal_id: map['mal_id'] != null ? map['mal_id'] as int : null,
      type: map['type'] != null ? map['type'] as String : null,
      namex: map['namex'] != null ? map['namex'] as String : null,
      url: map['url'] != null ? map['url'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Demographics.fromJson(String source) =>
      Demographics.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Demographics(mal_id: $mal_id, type: $type, namex: $namex, url: $url)';
  }

  @override
  bool operator ==(covariant Demographics other) {
    if (identical(this, other)) return true;

    return other.mal_id == mal_id &&
        other.type == type &&
        other.namex == namex &&
        other.url == url;
  }

  @override
  int get hashCode {
    return mal_id.hashCode ^ type.hashCode ^ namex.hashCode ^ url.hashCode;
  }
}

class Themes {
  int? mal_id;
  String? type;
  String? namex;
  String? url;
  Themes({
    this.mal_id,
    this.type,
    this.namex,
    this.url,
  });

  Themes copyWith({
    int? mal_id,
    String? type,
    String? namex,
    String? url,
  }) {
    return Themes(
      mal_id: mal_id ?? this.mal_id,
      type: type ?? this.type,
      namex: namex ?? this.namex,
      url: url ?? this.url,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mal_id': mal_id,
      'type': type,
      'namex': namex,
      'url': url,
    };
  }

  factory Themes.fromMap(Map<String, dynamic> map) {
    return Themes(
      mal_id: map['mal_id'] != null ? map['mal_id'] as int : null,
      type: map['type'] != null ? map['type'] as String : null,
      namex: map['namex'] != null ? map['namex'] as String : null,
      url: map['url'] != null ? map['url'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Themes.fromJson(String source) =>
      Themes.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Themes(mal_id: $mal_id, type: $type, namex: $namex, url: $url)';
  }

  @override
  bool operator ==(covariant Themes other) {
    if (identical(this, other)) return true;

    return other.mal_id == mal_id &&
        other.type == type &&
        other.namex == namex &&
        other.url == url;
  }

  @override
  int get hashCode {
    return mal_id.hashCode ^ type.hashCode ^ namex.hashCode ^ url.hashCode;
  }
}

class Genres {
  int? mal_id;
  String? type;
  String? namex;
  String? url;
  Genres({
    this.mal_id,
    this.type,
    this.namex,
    this.url,
  });

  Genres copyWith({
    int? mal_id,
    String? type,
    String? namex,
    String? url,
  }) {
    return Genres(
      mal_id: mal_id ?? this.mal_id,
      type: type ?? this.type,
      namex: namex ?? this.namex,
      url: url ?? this.url,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mal_id': mal_id,
      'type': type,
      'namex': namex,
      'url': url,
    };
  }

  factory Genres.fromMap(Map<String, dynamic> map) {
    return Genres(
      mal_id: map['mal_id'] != null ? map['mal_id'] as int : null,
      type: map['type'] != null ? map['type'] as String : null,
      namex: map['namex'] != null ? map['namex'] as String : null,
      url: map['url'] != null ? map['url'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Genres.fromJson(String source) =>
      Genres.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Genres(mal_id: $mal_id, type: $type, namex: $namex, url: $url)';
  }

  @override
  bool operator ==(covariant Genres other) {
    if (identical(this, other)) return true;

    return other.mal_id == mal_id &&
        other.type == type &&
        other.namex == namex &&
        other.url == url;
  }

  @override
  int get hashCode {
    return mal_id.hashCode ^ type.hashCode ^ namex.hashCode ^ url.hashCode;
  }
}

class Studios {
  int? mal_id;
  String? type;
  String? name;
  String? url;
  Studios({
    this.mal_id,
    this.type,
    this.name,
    this.url,
  });

  Studios copyWith({
    int? mal_id,
    String? type,
    String? name,
    String? url,
  }) {
    return Studios(
      mal_id: mal_id ?? this.mal_id,
      type: type ?? this.type,
      name: name ?? this.name,
      url: url ?? this.url,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mal_id': mal_id,
      'type': type,
      'name': name,
      'url': url,
    };
  }

  factory Studios.fromMap(Map<String, dynamic> map) {
    return Studios(
      mal_id: map['mal_id'] != null ? map['mal_id'] as int : null,
      type: map['type'] != null ? map['type'] as String : null,
      name: map['name'] != null ? map['name'] as String : null,
      url: map['url'] != null ? map['url'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Studios.fromJson(String source) =>
      Studios.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Studios(mal_id: $mal_id, type: $type, name: $name, url: $url)';
  }

  @override
  bool operator ==(covariant Studios other) {
    if (identical(this, other)) return true;

    return other.mal_id == mal_id &&
        other.type == type &&
        other.name == name &&
        other.url == url;
  }

  @override
  int get hashCode {
    return mal_id.hashCode ^ type.hashCode ^ name.hashCode ^ url.hashCode;
  }
}

class Licensors {
  int? mal_id;
  String? type;
  String? name;
  String? url;
  Licensors({
    this.mal_id,
    this.type,
    this.name,
    this.url,
  });

  Licensors copyWith({
    int? mal_id,
    String? type,
    String? name,
    String? url,
  }) {
    return Licensors(
      mal_id: mal_id ?? this.mal_id,
      type: type ?? this.type,
      name: name ?? this.name,
      url: url ?? this.url,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mal_id': mal_id,
      'type': type,
      'name': name,
      'url': url,
    };
  }

  factory Licensors.fromMap(Map<String, dynamic> map) {
    return Licensors(
      mal_id: map['mal_id'] != null ? map['mal_id'] as int : null,
      type: map['type'] != null ? map['type'] as String : null,
      name: map['name'] != null ? map['name'] as String : null,
      url: map['url'] != null ? map['url'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Licensors.fromJson(String source) =>
      Licensors.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Licensors(mal_id: $mal_id, type: $type, name: $name, url: $url)';
  }

  @override
  bool operator ==(covariant Licensors other) {
    if (identical(this, other)) return true;

    return other.mal_id == mal_id &&
        other.type == type &&
        other.name == name &&
        other.url == url;
  }

  @override
  int get hashCode {
    return mal_id.hashCode ^ type.hashCode ^ name.hashCode ^ url.hashCode;
  }
}

class Images {
  Jpg? jpg;
  Jpg? webp;
  Images({
    this.jpg,
    this.webp,
  });

  Images copyWith({
    Jpg? jpg,
    Jpg? webp,
  }) {
    return Images(
      jpg: jpg ?? this.jpg,
      webp: webp ?? this.webp,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jpg': jpg?.toMap(),
      'webp': webp?.toMap(),
    };
  }

  factory Images.fromMap(Map<String, dynamic> map) {
    return Images(
      jpg: map['jpg'] != null
          ? Jpg.fromMap(map['jpg'] as Map<String, dynamic>)
          : null,
      webp: map['webp'] != null
          ? Jpg.fromMap(map['webp'] as Map<String, dynamic>)
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Images.fromJson(String source) =>
      Images.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Images(jpg: $jpg, webp: $webp)';

  @override
  bool operator ==(covariant Images other) {
    if (identical(this, other)) return true;

    return other.jpg == jpg && other.webp == webp;
  }

  @override
  int get hashCode => jpg.hashCode ^ webp.hashCode;
}

class Jpg {
  String? imageUrl;
  String? smallImageUrl;
  String? largeImageUrl;
  Jpg({
    this.imageUrl,
    this.smallImageUrl,
    this.largeImageUrl,
  });

  Jpg copyWith({
    String? imageUrl,
    String? smallImageUrl,
    String? largeImageUrl,
  }) {
    return Jpg(
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

  factory Jpg.fromMap(Map<String, dynamic> map) {
    return Jpg(
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

  factory Jpg.fromJson(String source) =>
      Jpg.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'Jpg(imageUrl: $imageUrl, smallImageUrl: $smallImageUrl, largeImageUrl: $largeImageUrl)';

  @override
  bool operator ==(covariant Jpg other) {
    if (identical(this, other)) return true;

    return other.imageUrl == imageUrl &&
        other.smallImageUrl == smallImageUrl &&
        other.largeImageUrl == largeImageUrl;
  }

  @override
  int get hashCode =>
      imageUrl.hashCode ^ smallImageUrl.hashCode ^ largeImageUrl.hashCode;
}

class Trailer {
  String? youtubeId;
  String? url;
  String? embedUrl;
  Images? images;
  Trailer({
    this.youtubeId,
    this.url,
    this.embedUrl,
    this.images,
  });

  Trailer copyWith({
    String? youtubeId,
    String? url,
    String? embedUrl,
    Images? images,
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
      'youtube_id': youtubeId,
      'url': url,
      'embed_url': embedUrl,
      'images': images?.toMap(),
    };
  }

  factory Trailer.fromMap(Map<String, dynamic> map) {
    return Trailer(
      youtubeId: map['youtube_id'] != null ? map['youtube_id'] as String : null,
      url: map['url'] != null ? map['url'] as String : null,
      embedUrl: map['embed_url'] != null ? map['embed_url'] as String : null,
      images: map['images'] != null
          ? Images.fromMap(map['images'] as Map<String, dynamic>)
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Trailer.fromJson(String source) =>
      Trailer.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Trailer(youtubeId: $youtubeId, url: $url, embedUrl: $embedUrl, images: $images)';
  }

  @override
  bool operator ==(covariant Trailer other) {
    if (identical(this, other)) return true;

    return other.youtubeId == youtubeId &&
        other.url == url &&
        other.embedUrl == embedUrl &&
        other.images == images;
  }

  @override
  int get hashCode {
    return youtubeId.hashCode ^
        url.hashCode ^
        embedUrl.hashCode ^
        images.hashCode;
  }
}

class Image {
  String? imageUrl;
  String? smallImageUrl;
  String? mediumImageUrl;
  String? largeImageUrl;
  String? maximumImageUrl;
  Image({
    this.imageUrl,
    this.smallImageUrl,
    this.mediumImageUrl,
    this.largeImageUrl,
    this.maximumImageUrl,
  });

  Image copyWith({
    String? imageUrl,
    String? smallImageUrl,
    String? mediumImageUrl,
    String? largeImageUrl,
    String? maximumImageUrl,
  }) {
    return Image(
      imageUrl: imageUrl ?? this.imageUrl,
      smallImageUrl: smallImageUrl ?? this.smallImageUrl,
      mediumImageUrl: mediumImageUrl ?? this.mediumImageUrl,
      largeImageUrl: largeImageUrl ?? this.largeImageUrl,
      maximumImageUrl: maximumImageUrl ?? this.maximumImageUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'image_url': imageUrl,
      'small_image_url': smallImageUrl,
      'medium_image_url': mediumImageUrl,
      'large_image_url': largeImageUrl,
      'maximum_image_url': maximumImageUrl,
    };
  }

  factory Image.fromMap(Map<String, dynamic> map) {
    return Image(
      imageUrl: map['image_url'] != null ? map['image_url'] as String : null,
      smallImageUrl: map['small_image_url'] != null
          ? map['small_image_url'] as String
          : null,
      mediumImageUrl: map['medium_image_url'] != null
          ? map['medium_image_url'] as String
          : null,
      largeImageUrl: map['large_image_url'] != null
          ? map['large_image_url'] as String
          : null,
      maximumImageUrl: map['maximum_image_url'] != null
          ? map['maximum_image_url'] as String
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Image.fromJson(String source) =>
      Image.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Image(imageUrl: $imageUrl, smallImageUrl: $smallImageUrl, mediumImageUrl: $mediumImageUrl, largeImageUrl: $largeImageUrl, maximumImageUrl: $maximumImageUrl)';
  }

  @override
  bool operator ==(covariant Image other) {
    if (identical(this, other)) return true;

    return other.imageUrl == imageUrl &&
        other.smallImageUrl == smallImageUrl &&
        other.mediumImageUrl == mediumImageUrl &&
        other.largeImageUrl == largeImageUrl &&
        other.maximumImageUrl == maximumImageUrl;
  }

  @override
  int get hashCode {
    return imageUrl.hashCode ^
        smallImageUrl.hashCode ^
        mediumImageUrl.hashCode ^
        largeImageUrl.hashCode ^
        maximumImageUrl.hashCode;
  }
}

class Titles {
  String? type;
  String? title;
  Titles({
    this.type,
    this.title,
  });

  Titles copyWith({
    String? type,
    String? title,
  }) {
    return Titles(
      type: type ?? this.type,
      title: title ?? this.title,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'title': title,
    };
  }

  factory Titles.fromMap(Map<String, dynamic> map) {
    return Titles(
      type: map['type'] != null ? map['type'] as String : null,
      title: map['title'] != null ? map['title'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Titles.fromJson(String source) =>
      Titles.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Titles(type: $type, title: $title)';

  @override
  bool operator ==(covariant Titles other) {
    if (identical(this, other)) return true;

    return other.type == type && other.title == title;
  }

  @override
  int get hashCode => type.hashCode ^ title.hashCode;
}

class Aired {
  String? from;
  String? to;
  Prop? prop;
  String? string;
  Aired({
    this.from,
    this.to,
    this.prop,
    this.string,
  });

  Aired copyWith({
    String? from,
    String? to,
    Prop? prop,
    String? string,
  }) {
    return Aired(
      from: from ?? this.from,
      to: to ?? this.to,
      prop: prop ?? this.prop,
      string: string ?? this.string,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'from': from,
      'to': to,
      'prop': prop?.toMap(),
      'string': string,
    };
  }

  factory Aired.fromMap(Map<String, dynamic> map) {
    return Aired(
      from: map['from'] != null ? map['from'] as String : null,
      to: map['to'] != null ? map['to'] as String : null,
      prop: map['prop'] != null
          ? Prop.fromMap(map['prop'] as Map<String, dynamic>)
          : null,
      string: map['string'] != null ? map['string'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Aired.fromJson(String source) =>
      Aired.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Aired(from: $from, to: $to, prop: $prop, string: $string)';
  }

  @override
  bool operator ==(covariant Aired other) {
    if (identical(this, other)) return true;

    return other.from == from &&
        other.to == to &&
        other.prop == prop &&
        other.string == string;
  }

  @override
  int get hashCode {
    return from.hashCode ^ to.hashCode ^ prop.hashCode ^ string.hashCode;
  }
}

class Prop {
  From? from;
  From? to;
  Prop({
    this.from,
    this.to,
  });

  Prop copyWith({
    From? from,
    From? to,
  }) {
    return Prop(
      from: from ?? this.from,
      to: to ?? this.to,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'from': from?.toMap(),
      'to': to?.toMap(),
    };
  }

  factory Prop.fromMap(Map<String, dynamic> map) {
    return Prop(
      from: map['from'] != null
          ? From.fromMap(map['from'] as Map<String, dynamic>)
          : null,
      to: map['to'] != null
          ? From.fromMap(map['to'] as Map<String, dynamic>)
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Prop.fromJson(String source) =>
      Prop.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Prop(from: $from, to: $to)';

  @override
  bool operator ==(covariant Prop other) {
    if (identical(this, other)) return true;

    return other.from == from && other.to == to;
  }

  @override
  int get hashCode => from.hashCode ^ to.hashCode;
}

class From {
  int? day;
  int? month;
  int? year;
  From({
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
  String toString() => 'From(day: $day, month: $month, year: $year)';

  @override
  bool operator ==(covariant From other) {
    if (identical(this, other)) return true;

    return other.day == day && other.month == month && other.year == year;
  }

  @override
  int get hashCode => day.hashCode ^ month.hashCode ^ year.hashCode;
}

class Broadcast {
  String? day;
  String? time;
  String? timezone;
  String? string;
  Broadcast({
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
  String toString() {
    return 'Broadcast(day: $day, time: $time, timezone: $timezone, string: $string)';
  }

  @override
  bool operator ==(covariant Broadcast other) {
    if (identical(this, other)) return true;

    return other.day == day &&
        other.time == time &&
        other.timezone == timezone &&
        other.string == string;
  }

  @override
  int get hashCode {
    return day.hashCode ^ time.hashCode ^ timezone.hashCode ^ string.hashCode;
  }
}

class Producers {
  int? malId;
  String? type;
  String? name;
  String? url;
  Producers({
    this.malId,
    this.type,
    this.name,
    this.url,
  });

  Producers copyWith({
    int? malId,
    String? type,
    String? name,
    String? url,
  }) {
    return Producers(
      malId: malId ?? this.malId,
      type: type ?? this.type,
      name: name ?? this.name,
      url: url ?? this.url,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mal_id': malId,
      'type': type,
      'name': name,
      'url': url,
    };
  }

  factory Producers.fromMap(Map<String, dynamic> map) {
    return Producers(
      malId: map['mal_id'] != null ? map['mal_id'] as int : null,
      type: map['type'] != null ? map['type'] as String : null,
      name: map['name'] != null ? map['name'] as String : null,
      url: map['url'] != null ? map['url'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Producers.fromJson(String source) =>
      Producers.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Producers(malId: $malId, type: $type, name: $name, url: $url)';
  }

  @override
  bool operator ==(covariant Producers other) {
    if (identical(this, other)) return true;

    return other.malId == malId &&
        other.type == type &&
        other.name == name &&
        other.url == url;
  }

  @override
  int get hashCode {
    return malId.hashCode ^ type.hashCode ^ name.hashCode ^ url.hashCode;
  }
}
