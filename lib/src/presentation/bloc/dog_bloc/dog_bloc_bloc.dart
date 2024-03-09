import 'dart:developer';

import 'package:anime_app/src/data/repositories/dog_service_repo.dart';
import 'package:anime_app/src/domain/model/error_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'dog_bloc_state.dart';
part 'dog_bloc_event.dart';

class DogBloc extends Bloc<DogEvent, DogState> {
  DogRepo repo;
  DogBloc(this.repo) : super(DogInitial()) {
    on<GetBreeds>((event, emit) async {
      try {
        emit(Loading(
            breedList: {}, images: [], tempBreedList: {}, tempImages: []));
        final response = await repo.getBreeds();

        response.fold((l) {
          emit(Failed(error: l, tempBreedList: {}, tempImages: []));
        }, (r) {
          emit(DogInitial(breedList: r, tempBreedList: r));
        });
      } catch (e) {
        log(e.toString());

        emit(Failed(
            error: const ErrorModel(
                code: 500,
                message: "Beklenmeyen bir hata oluştu",
                status: "false"),
            tempBreedList: {},
            tempImages: []));
      }
    });
  }
}
