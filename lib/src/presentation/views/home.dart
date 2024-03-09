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
              height: 30.h);
        } else if (state is Failed) {
          //CustomAlertDialog.getAlert(context, );
        } else if (state is AnimeLoaded) {
          Navigator.pop(context);
        }
      },
      child: Scaffold(body: BlocBuilder<AnimeBloc, AnimeState>(
        builder: (context, state) {
          return ListView.builder(
            controller: controller,
            itemCount: state.animeList.data!.length,
            itemBuilder: (context, index) {
              return AnimeListItem(
                  image: state.animeList.data![index].images!.jpg!.imageUrl
                      .toString(),
                  title: state.animeList.data![index].title.toString(),
                  rate: state.animeList.data![index].score!.toDouble());
            },
          );
        },
      )),
    );
  }
}
