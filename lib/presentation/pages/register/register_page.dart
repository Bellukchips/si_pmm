import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:resource/resource.dart';
import 'package:sipmm/presentation/core/responsive.dart';
import 'package:sipmm/presentation/pages/auth/auth_page.dart';
import 'package:sipmm/shared/shared.dart';
part 'components/background_register_page.dart';
part 'components/body_register_page.dart';
part 'components/body_register_large.dart';
part 'components/body_register_small.dart';
class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: BackgroundRegisterPage(
        child: BodyRegisterPage(),
      )),
    );
  }
}
