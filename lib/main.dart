import 'package:anime_app/src/data/datasources/service/service.dart';
import 'package:anime_app/src/data/repositories/dog_service_repo.dart';
import 'package:anime_app/src/presentation/bloc/bloc.dart';
import 'package:anime_app/src/presentation/bloc/dog_bloc/dog_bloc_bloc.dart';
import 'package:anime_app/src/presentation/views/home.dart';
import 'package:anime_app/src/presentation/views/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

void main() {
  Bloc.observer = SimpleBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return BlocProvider(
        create: (context) => DogBloc(DogRepo(service: Services())),
        child: MaterialApp(
          routes: {
            '/': (context) => const SplashScreen(),
            '/home': (context) => const HomePage(),
          },
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
          ),
        ),
      );
    });
  }
}
