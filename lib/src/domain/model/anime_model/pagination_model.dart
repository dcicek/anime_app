// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:anime_app/src/domain/model/anime_model/items_model.dart';

class Pagination extends Equatable {
  final int lastVisiblePage;
  final bool hasNextPage;
  final int currentPage;
  final Items items;
  const Pagination({
    required this.lastVisiblePage,
    required this.hasNextPage,
    required this.currentPage,
    required this.items,
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
      'last_visible_page': lastVisiblePage,
      'has_next_page': hasNextPage,
      'current_page': currentPage,
      'items': items.toMap(),
    };
  }

  factory Pagination.fromMap(Map<String, dynamic> map) {
    return Pagination(
      lastVisiblePage: map['last_visible_page'] as int,
      hasNextPage: map['has_next_page'] as bool,
      currentPage: map['current_page'] as int,
      items: Items.fromMap(map['items'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory Pagination.fromJson(String source) =>
      Pagination.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [lastVisiblePage, hasNextPage, currentPage, items];
}
