import 'package:flutter/material.dart';
import 'package:sipmm/presentation/pages/splash/splash_page.dart';
import 'package:sipmm/shared/shared.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashPage(),
      title: Strings.app,
    );
  }
}
