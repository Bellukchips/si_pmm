part of '../auth_page.dart';

class BodyAuthPage extends StatefulWidget {
  const BodyAuthPage({super.key});

  @override
  State<BodyAuthPage> createState() => _BodyAuthPageState();
}

class _BodyAuthPageState extends State<BodyAuthPage> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout.isSmallScreen(context)
        ? const BodyAuthSmall()
        : const BodyAuthLarge();
  }
}
