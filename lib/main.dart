import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:test_mobx/src/router/router.dart';
import 'package:test_mobx/src/store/mtg_card_list_store.dart';

final getIt = GetIt.instance;

void main() {
  getIt.registerSingleton<MtgCardListStore>(MtgCardListStore());
  getIt.registerSingleton<AppRouter>(AppRouter());

  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        fontFamily: "Jaro",
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 255, 255, 255),
        ),
        useMaterial3: true,
      ),
      routerConfig: getIt<AppRouter>().config(),
      debugShowCheckedModeBanner: false,
    );
  }
}
