// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'anime_bloc.dart';

abstract class AnimeState {
  final AnimeModel animeList;
  final Data? selectedAnime;
  AnimeState(this.animeList, this.selectedAnime);
  List<Object> get props => [animeList, selectedAnime ?? Object()];
}

class Loading extends AnimeState {
  Loading(super.animeList, super.selectedAnime);
}

class AnimeInitial extends AnimeState {
  AnimeInitial(super.animeList, super.selectedAnime);
}

class AnimeLoaded extends AnimeState {
  AnimeLoaded(super.animeList, super.selectedAnime);
}

class AnimeSelected extends AnimeState {
  AnimeSelected(super.animeList, super.selectedAnime);
}

class AnimeCharLoaded extends AnimeState {
  final CharData char;
  AnimeCharLoaded(super.animeList, super.selectedAnime, {required this.char});

  List<Object> get props => [char];
}

class Failed extends AnimeState {
  final ErrorModel error;
  Failed(super.animeList, super.selectedAnime, {required this.error});

  List<Object> get props => [error];
}
