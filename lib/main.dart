import 'package:flutter/material.dart';
import 'package:sorteio_app/pages/home_page.dart';
import 'package:sorteio_app/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sorteio App',
      initialRoute: '/splash',
      routes: {
        '/splash': (_) => const SplashPage(),
        '/homepage': (_) => const HomePage(),
      },
    );
  }
}
