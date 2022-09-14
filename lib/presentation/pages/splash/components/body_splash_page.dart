part of '../splash_page.dart';

class BodySplashScreen extends StatelessWidget {
  const BodySplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: 80,
      child: SpinKitDoubleBounce(
        size: 80,
        color: ColorApp.primaryColor,
      ),
    );
  }
}
