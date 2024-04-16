import 'package:exchage_app2/data_source/exchange_api.dart';
import 'package:exchage_app2/presentaion/exchange_view_model.dart';
import 'package:exchage_app2/repository/exchange_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'presentaion/exchange_main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white, primary: Colors.white),
        useMaterial3: true,
        primaryColor: Colors.white
      ),
      home: ChangeNotifierProvider (
        create: (_) {
          return ExchangeViewModel(repository: ExchangeRepositoryImpl(api: ExchangeApi())
          );
        },
        child: ExchangeMainScreen(),
      ),
    );
  }
}
