import 'dart:developer';

import 'package:anime_app/src/data/repositories/anime_service_repo.dart';
import 'package:anime_app/src/domain/model/anime_model/anime_model.dart';
import 'package:anime_app/src/domain/model/anime_model/data_model.dart';
import 'package:anime_app/src/domain/model/anime_model/items_model.dart';
import 'package:anime_app/src/domain/model/anime_model/pagination_model.dart';
import 'package:anime_app/src/domain/model/character_model/char_data_model.dart';
import 'package:anime_app/src/domain/model/error_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'anime_bloc_state.dart';
part 'anime_bloc_event.dart';

class AnimeBloc extends Bloc<AnimeEvent, AnimeState> {
  DogRepo repo;
  AnimeBloc(this.repo)
      : super(AnimeInitial(
            AnimeModel(
                data: const [],
                pagination: const Pagination(
                    currentPage: 0,
                    hasNextPage: true,
                    items: Items(count: 0, perPage: 0, total: 0),
                    lastVisiblePage: 0)),
            null)) {
    AnimeModel oldAnimeModel;
    on<GetAnimeList>((event, emit) async {
      try {
        emit(Loading(state.animeList, state.selectedAnime));
        if (state.animeList.pagination.hasNextPage) {
          final response = await repo
              .getAnimeList(state.animeList.pagination.currentPage + 1);

          response.fold((l) {
            emit(Failed(
              state.animeList,
              null,
              error: l,
            ));
          }, (r) {
            oldAnimeModel = state.animeList;
            AnimeModel temp = r;

            temp.data = oldAnimeModel.data + r.data;

            emit(AnimeLoaded(temp, state.selectedAnime));
          });
        } else {
          emit(Failed(
            state.animeList,
            null,
            error: const ErrorModel(
                message: "Tüm kayıtlar listelenmiştir.",
                status: 500,
                type: '',
                error: ''),
          ));
        }
      } catch (e) {
        log(e.toString());

        emit(Failed(
          state.animeList,
          null,
          error: ErrorModel(
              message: e.toString(), status: 500, type: '', error: ''),
        ));
      }
    });

    on<SelectAnime>((event, emit) async {
      try {
        emit(AnimeSelected(state.animeList, event.selectedAnime));
      } catch (e) {
        log(e.toString());
        emit(Failed(
          state.animeList,
          null,
          error: ErrorModel(
              message: e.toString(), status: 500, type: '', error: ''),
        ));
      }
    });

    on<GetCharacterList>((event, emit) async {
      try {
        emit(Loading(state.animeList, state.selectedAnime));
        final response = await repo.getCharList(state.selectedAnime!.malId);

        response.fold((l) {
          emit(Failed(
            state.animeList,
            state.selectedAnime,
            error: l,
          ));
        }, (r) {
          emit(AnimeCharLoaded(state.animeList, state.selectedAnime, char: r));
        });
      } catch (e) {
        log(e.toString());
        emit(Failed(
          state.animeList,
          state.selectedAnime,
          error: ErrorModel(
              message: e.toString(), status: 500, type: '', error: ''),
        ));
      }
    });
  }
}
