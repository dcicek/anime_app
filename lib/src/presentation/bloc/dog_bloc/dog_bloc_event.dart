// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'dog_bloc_bloc.dart';

abstract class DogEvent {}

class GetBreeds extends DogEvent {}

class GetBreedImage extends DogEvent {
  final List<String> breed;
  GetBreedImage({
    required this.breed,
  });
}

class SearchBreed extends DogEvent {
  final String breed;
  SearchBreed({
    required this.breed,
  });
}

class GenerateRandomImage extends DogEvent {
  final String breed;
  GenerateRandomImage({
    required this.breed,
  });
}
