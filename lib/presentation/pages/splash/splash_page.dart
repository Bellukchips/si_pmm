import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:sipmm/presentation/pages/auth/auth_page.dart';
import 'package:sipmm/shared/shared.dart';
part 'components/body_splash_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    const duration = Duration(seconds: 2);
    Timer(duration, () {
      Navigator.push(
          context, MaterialPageRoute<void>(builder: (_) => const AuthPage()));
    });

    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: BodySplashScreen(),
        ),
      ),
    );
  }
}
