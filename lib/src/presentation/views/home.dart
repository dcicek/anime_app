import 'package:anime_app/src/data/nativemethods/native_methods.dart';
import 'package:anime_app/src/presentation/bloc/anime_bloc/anime_bloc.dart';
import 'package:anime_app/src/presentation/widgets/anime_list_item.dart';
import 'package:anime_app/src/presentation/widgets/custom_alert_dialog.dart';
import 'package:anime_app/src/presentation/widgets/custom_progress.dart';
import 'package:anime_app/src/presentation/widgets/fail_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController controller = ScrollController();

  @override
  void initState() {
    super.initState();
    controller.addListener(_scrollListener);
  }

  void _scrollListener() {
    if (controller.position.pixels == controller.position.maxScrollExtent) {
      //Sayfanın en sonuna ulaştıysa apiye istek atılıyor.
      context.read<AnimeBloc>().add(GetAnimeList());
    }
  }

  static const methodChannel = MethodChannel('com.example.anime_app');

  @override
  Widget build(BuildContext context) {
    methodChannel.setMethodCallHandler((methodCall) async {
      print("GELDİ");
      if (methodCall.method == "getAnimeList") {
        context.read<AnimeBloc>().add(GetAnimeList());
      } else if (methodCall.method == "getCharacterList") {
        context.read<AnimeBloc>().add(GetCharacterList());
      }
    });
    NativeBackground.invokeGetAnimeList();
    return BlocListener<AnimeBloc, AnimeState>(
      listener: (context, state) {
        if (state is Loading) {
          CustomAlertDialog.getAlert(context, const CustomProgress(),
              height: 10.h);
        } else if (state is Failed) {
          CustomAlertDialog.getAlert(
              context, FailWidget(message: state.error.message),
              height: 20.h);
        } else if (state is AnimeLoaded || state is AnimeCharLoaded) {
          Navigator.pop(context);
        }
      },
      child: Scaffold(body: BlocBuilder<AnimeBloc, AnimeState>(
        builder: (context, state) {
          return ListView.builder(
            controller: controller,
            itemCount: state.animeList.data.length,
            itemBuilder: (context, index) {
              return AnimeListItem(anime: state.animeList.data[index]);
            },
          );
        },
      )),
    );
  }
}
