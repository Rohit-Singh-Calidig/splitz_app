import 'dart:async';
import '../app/index.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 5),
      () => AppNavigation.navigateTo(context, AppRoutes.onboarding),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Logo",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
    );
  }
}
