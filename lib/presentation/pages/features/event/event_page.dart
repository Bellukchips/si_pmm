import 'package:flutter/material.dart';
import 'package:resource/shared/shared.dart';
import 'package:sipmm/shared/shared.dart';
part 'components/body_event_page.dart';

class EventPage extends StatelessWidget {
  const EventPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: BodyEventPage()),
    );
  }
}
