import 'dart:developer';

import 'package:anime_app/src/data/repositories/dog_service_repo.dart';
import 'package:anime_app/src/domain/model/anime_model/anime_model.dart';
import 'package:anime_app/src/domain/model/error_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'anime_bloc_state.dart';
part 'anime_bloc_event.dart';

class AnimeBloc extends Bloc<AnimeEvent, AnimeState> {
  DogRepo repo;
  AnimeBloc(this.repo)
      : super(AnimeInitial(
            AnimeModel(data: [], pagination: Pagination(currentPage: 0)))) {
    AnimeModel oldAnimeModel;
    AnimeModel newAnimeModel;
    on<GetAnimeList>((event, emit) async {
      try {
        emit(Loading(state.animeList));
        final response = await repo
            .getAnimeList(state.animeList.pagination!.currentPage! + 1);

        response.fold((l) {}, (r) {
          oldAnimeModel = state.animeList;
          AnimeModel temp = r;

          temp.data = oldAnimeModel.data! + r.data!;

          emit(AnimeLoaded(temp));
        });
      } catch (e) {
        log(e.toString());

        emit(Failed(
          state.animeList,
          error: const ErrorModel(
              message: 'Bir hata oluştu.', status: 500, type: '', error: ''),
        ));
      }
    });
  }
}
