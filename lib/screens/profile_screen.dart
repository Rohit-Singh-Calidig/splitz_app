import '../app/index.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Profile Screen",
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              fontFamily: Constants.fontUrbanist,
              fontWeight: FontWeight.w700,
              color: AppColors.grayScale25),
        ),
      ),
    );
  }
}
