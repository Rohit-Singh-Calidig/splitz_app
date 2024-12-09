import '../app/index.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            VerticalGap(
              height: 80.h,
            ),
            Text(
              "Log in",
              style: Theme.of(context).textTheme.displayLarge,
            ),
            VerticalGap(
              height: 8.h,
            ),
            Text(
              "Please enter your email address",
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
            Expanded(
              flex: 1,
              child: VerticalGap(height: 12.h),
            ),
            AppElevatedButton(
                label: "Login",
                onPressed: () {
                  AppNavigation.navigateTo(context, AppRoutes.otp);
                }),
            VerticalGap(height: 8.h),
            Center(
              child: RichText(
                text: TextSpan(
                  text: "Don't have any account?",
                  style: Theme.of(context).textTheme.bodySmall,
                  children: <TextSpan>[
                    TextSpan(
                      text: " Sign up ",
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(color: AppColors.primaryGreen),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () =>
                            AppNavigation.navigateTo(context, AppRoutes.signup),
                    ),
                  ],
                ),
              ),
            ),
            VerticalGap(height: 8.h),
          ],
        ),
      ),
    );
  }
}
