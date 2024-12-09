import '../app/index.dart';

class BuddiesScreen extends StatelessWidget {
  const BuddiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Buddies Screen",
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              fontFamily: Constants.fontUrbanist,
              fontWeight: FontWeight.w700,
              color: AppColors.grayScale25),
        ),
      ),
    );
  }
}