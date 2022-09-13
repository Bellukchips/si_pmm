import 'package:flutter/material.dart';
import 'package:resource/shared/shared.dart';
import 'package:sipmm/shared/shared.dart';
part 'components/body_notice_page.dart';

class NoticePage extends StatelessWidget {
  const NoticePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: BodyNoticePage()),
    );
  }
}
