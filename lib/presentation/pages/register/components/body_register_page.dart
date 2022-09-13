part of '../register_page.dart';

class BodyRegisterPage extends StatefulWidget {
  const BodyRegisterPage({super.key});

  @override
  State<BodyRegisterPage> createState() => _BodyRegisterPageState();
}

class _BodyRegisterPageState extends State<BodyRegisterPage> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout.isSmallScreen(context)
        ? const BodyRegisterSmall()
        : const BodyRegisterLarge();
  }
}
