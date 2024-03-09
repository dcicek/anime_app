part of 'dog_bloc_bloc.dart';

abstract class DogState {
  final Map<String, dynamic>? breedList;
  final List<String>? images;
  final Map<String, dynamic>? tempBreedList;
  final List<String>? tempImages;

  DogState(
      {required this.breedList,
      required this.images,
      required this.tempBreedList,
      required this.tempImages});
}

class Loading extends DogState {
  Loading(
      {required super.breedList,
      required super.images,
      required super.tempBreedList,
      required super.tempImages});
}

class DogInitial extends DogState {
  final Map<String, dynamic>? breedList;
  final List<String>? images;
  final Map<String, dynamic>? tempBreedList;
  final List<String>? tempImages;
  DogInitial({this.breedList, this.images, this.tempBreedList, this.tempImages})
      : super(
            breedList: breedList,
            images: images,
            tempBreedList: tempBreedList,
            tempImages: tempImages);

  List<Object> get props => [breedList ?? Object()];
}

class Failed extends DogState {
  final ErrorModel error;
  final Map<String, dynamic>? tempBreedList;
  final List<String>? tempImages;
  Failed(
      {required this.error,
      required this.tempBreedList,
      required this.tempImages})
      : super(
            breedList: null,
            images: null,
            tempBreedList: tempBreedList,
            tempImages: tempImages);
  List<Object> get props => [error];
}
