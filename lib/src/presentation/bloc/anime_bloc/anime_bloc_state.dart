// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'anime_bloc.dart';

abstract class AnimeState extends Equatable {
  final AnimeModel animeList;
  final Data? selectedAnime;
  const AnimeState(this.animeList, this.selectedAnime);

  @override
  List<Object> get props => [animeList, selectedAnime ?? Object()];
}

class Loading extends AnimeState {
  const Loading(super.animeList, super.selectedAnime);
}

class AnimeInitial extends AnimeState {
  const AnimeInitial(super.animeList, super.selectedAnime);
}

class AnimeLoaded extends AnimeState {
  const AnimeLoaded(super.animeList, super.selectedAnime);
}

class AnimeSelected extends AnimeState {
  const AnimeSelected(super.animeList, super.selectedAnime);
}

class AnimeCharLoaded extends AnimeState {
  final CharData char;
  const AnimeCharLoaded(super.animeList, super.selectedAnime,
      {required this.char});

  @override
  List<Object> get props => [char];
}

class Failed extends AnimeState {
  final ErrorModel error;
  const Failed(super.animeList, super.selectedAnime, {required this.error});

  @override
  List<Object> get props => [error];
}
