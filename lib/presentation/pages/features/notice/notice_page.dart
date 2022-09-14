import 'package:flutter/material.dart';
import 'package:resource/shared/shared.dart';
import 'package:sipmm/shared/shared.dart';
part 'components/body_notice_page.dart';

class NoticePage extends StatelessWidget {
  const NoticePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorApp.primaryColor,
        centerTitle: true,
        title: Text(
          'Pengumuman',
          style: FontApp.primaryStyle.copyWith(color: Colors.white),
        ),
        elevation: 0,
      ),
      body: const SafeArea(child: BodyNoticePage()),
    );
  }
}
