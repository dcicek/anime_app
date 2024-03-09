// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'anime_bloc.dart';

abstract class AnimeState {
  final AnimeModel animeList;
  AnimeState(this.animeList);
  List<Object> get props => [animeList];
}

class Loading extends AnimeState {
  Loading(super.animeList);
}

class AnimeInitial extends AnimeState {
  AnimeInitial(super.animeList);
}

class AnimeLoaded extends AnimeState {
  AnimeLoaded(super.animeList);
}

class Failed extends AnimeState {
  final ErrorModel error;
  Failed(super.animeList, {required this.error});

  List<Object> get props => [error];
}
