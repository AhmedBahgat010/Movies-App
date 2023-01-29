import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/view/screens/all_movies.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies/view/screens/cubit/moviesCubit.dart';
import 'core/style/theme.dart';
import 'data/repository/character_reposety.dart';
import 'data/web_services/api_character.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(  designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
      return MaterialApp(
          theme: darkTheme,
          debugShowCheckedModeBanner: false,
          home: BlocProvider<MoviesCubit>(
              create: (context) => MoviesCubit(MoviesReposetory(MoviesApi())),

              child: const MoviesScreen()),
        );
      },

    );
  }
}
