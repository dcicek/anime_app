// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'anime_bloc.dart';

abstract class AnimeEvent {}

class GetAnimeList extends AnimeEvent {
  GetAnimeList();
}

class SelectAnime extends AnimeEvent {
  final Data selectedAnime;
  SelectAnime({required this.selectedAnime});
}

class GetCharacterList extends AnimeEvent {
  GetCharacterList();
}
