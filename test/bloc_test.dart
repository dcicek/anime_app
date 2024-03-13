// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:anime_app/src/data/datasources/service/service.dart';
import 'package:anime_app/src/data/repositories/anime_service_repo.dart';
import 'package:anime_app/src/domain/model/anime_model/anime_model.dart';
import 'package:anime_app/src/domain/model/anime_model/items_model.dart';
import 'package:anime_app/src/domain/model/anime_model/pagination_model.dart';
import 'package:anime_app/src/presentation/bloc/anime_bloc/anime_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AnimeBloc', () {
    AnimeBloc bloc = AnimeBloc(AnimeRepo(service: Services()));

    setUp(() {
      bloc = AnimeBloc(AnimeRepo(service: Services()));
    });

    tearDown(() {
      bloc.close();
    });

    test('Initial test', () {
      expect(
          bloc.state,
          AnimeInitial(
              AnimeModel(
                  data: const [],
                  pagination: const Pagination(
                      currentPage: 0,
                      hasNextPage: true,
                      items: Items(count: 0, perPage: 0, total: 0),
                      lastVisiblePage: 0)),
              null));
    });

    /* blocTest(
      'Anime loaded',
      build: () => bloc,
      act: (cubit) => cubit.add(GetAnimeList()),
      wait: const Duration(seconds: 3),
      expect: () => [
        (state) async {
          // İlk beklenen durumu kontrol et
          expect(state, isA<Loading>());

          // AnimeModel içeriğini dinamik bir şekilde ayarla
          final dynamic animeModelContent = await Services()
              .getAnimeList(1); // İstediğiniz içeriği alacak bir fonksiyon

          // Yeni bir AnimeLoaded bekleniyor
          return AnimeLoaded(
            animeModelContent,
            null,
          );
        },
      ],
    ); */
  });
}
