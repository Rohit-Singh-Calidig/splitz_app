import '../app/index.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VerticalGap(
                height: 80.h,
              ),
              Text(
                "Sign up",
                style: Theme.of(context).textTheme.displayLarge,
              ),
              VerticalGap(
                height: 8.h,
              ),
              Text(
                "A verification code will be sent to this number.",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              VerticalGap(
                height: 32.h,
              ),
              AppOutlinedButton(
                label: "Sign Up with Google",
                localImagePath: AppImages.google,
                onPressed: () {},
              ),
              VerticalGap(
                height: 16.h,
              ),
              AppOutlinedButton(
                label: "Sign Up with Apple",
                localImagePath: AppImages.apple,
                imageColor: AppColors.white,
                onPressed: () {},
              ),
              VerticalGap(
                height: 18.h,
              ),
              DividerWithText(
                text: "or sign up with email",
                textStyle: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(color: AppColors.grayScale300),
              ),
              VerticalGap(
                height: 18.h,
              ),
              AppOutlinedButton(
                label: "Sign Up with Email",
                localImagePath: AppImages.email,
                imageColor: AppColors.white,
                onPressed: () {
                  AppNavigation.navigateTo(context, AppRoutes.signupWithEmail);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
