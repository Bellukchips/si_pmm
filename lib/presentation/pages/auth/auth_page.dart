import 'package:flutter/material.dart';
import 'package:resource/resource.dart';
import 'package:sipmm/presentation/core/responsive.dart';
import 'package:sipmm/presentation/pages/features/home/home_page.dart';
import 'package:sipmm/presentation/pages/register/register_page.dart';
import 'package:sipmm/shared/shared.dart';
part 'components/background_auth.dart';
part 'components/body_auth.dart';
part 'components/body_auth_small.dart';
part 'components/body_auth_large.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: BackgroundAuthPage(child: BodyAuthPage())),
    );
  }
}
