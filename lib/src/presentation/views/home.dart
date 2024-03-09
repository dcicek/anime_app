import 'package:anime_app/src/presentation/widgets/anime_list_item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return AnimeListItem();
      },
    ));
  }
}
