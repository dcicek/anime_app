import 'package:anime_app/src/config/theme/colors.dart';
import 'package:anime_app/src/presentation/bloc/anime_bloc/anime_bloc.dart';
import 'package:anime_app/src/presentation/widgets/anime_list_item.dart';
import 'package:anime_app/src/presentation/widgets/custom_alert_dialog.dart';
import 'package:anime_app/src/presentation/widgets/custom_progress.dart';
import 'package:flutter/material.dart';
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

  @override
  Widget build(BuildContext context) {
    context.read<AnimeBloc>().add(GetAnimeList());
    return BlocListener<AnimeBloc, AnimeState>(
      listener: (context, state) {
        if (state is Loading) {
          CustomAlertDialog.getAlert(context, const CustomProgress(),
              height: 10.h);
        } else if (state is Failed) {
          //CustomAlertDialog.getAlert(context, );
        } else if (state is AnimeLoaded || state is AnimeCharLoaded) {
          Navigator.pop(context);
        }
      },
      child: Scaffold(body: BlocBuilder<AnimeBloc, AnimeState>(
        builder: (context, state) {
          return ListView.builder(
            controller: controller,
            itemCount: state.animeList.data!.length,
            itemBuilder: (context, index) {
              return AnimeListItem(anime: state.animeList.data![index]);
            },
          );
        },
      )),
    );
  }
}
