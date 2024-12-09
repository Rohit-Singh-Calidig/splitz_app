import '../app/index.dart';

class SignupWithEmailScreen extends StatelessWidget {
  const SignupWithEmailScreen({super.key});

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
                "Enter your email to sign up a new account",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              VerticalGap(
                height: 16.h,
              ),
              AppInputField(
                controller: TextEditingController(),
                hintText: "Enter email",
                keyboardType: TextInputType.emailAddress,
                obscureText: false,
                textInputAction: TextInputAction.done,
                prefixIcon: Image.asset(
                  AppImages.email,
                  color: AppColors.white,
                ),
              ),
              VerticalGap(height: 12.h),
              RichText(
                text: TextSpan(
                  text: "By providing my email, I agree and accept the",
                  style: Theme.of(context).textTheme.bodySmall,
                  children: <TextSpan>[
                    TextSpan(
                      text: " Terms of Services ",
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(color: AppColors.primaryGreen),
                    ),
                    TextSpan(
                      text: "and",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: " Privacy Policies ",
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(color: AppColors.primaryGreen),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => AppNavigation.navigateTo(
                            context, AppRoutes.inappWebview),
                    ),
                  ],
                ),
              ),
              VerticalGap(height: 96.h),
              AppElevatedButton(
                  label: "Continue",
                  onPressed: () {
                    AppNavigation.navigateTo(context, AppRoutes.otp);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
