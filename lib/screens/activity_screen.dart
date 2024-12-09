import '../app/index.dart';

class ActivityScreen extends StatelessWidget {
  const ActivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Activity Screen",
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              fontFamily: Constants.fontUrbanist,
              fontWeight: FontWeight.w700,
              color: AppColors.grayScale25),
        ),
      ),
    );
  }
}
