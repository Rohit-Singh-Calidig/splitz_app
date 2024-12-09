import '../app/index.dart';

class ChooseUsernameScreen extends StatelessWidget {
  const ChooseUsernameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        actions: [
          Text(
            "Skip",
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: AppColors.white,
                  fontFamily: Constants.fontSpaceGrotesk,
                ),
          ),
          HorizontalGap(width: 8.w),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            VerticalGap(
              height: 80.h,
            ),
            Text(
              "Start by choosing your username",
              style: Theme.of(context).textTheme.displayLarge,
            ),
            VerticalGap(
              height: 8.h,
            ),
            Text(
              "We've chosen a username for you. You can change it now or anytime within the app.",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            VerticalGap(
              height: 16.h,
            ),
            AppInputField(
              controller: TextEditingController(),
              hintText: "Enter username",
              keyboardType: TextInputType.text,
              obscureText: false,
              textInputAction: TextInputAction.done,
            ),
            Expanded(
              child: VerticalGap(height: 1.h),
            ),
            AppElevatedButton(
                label: "Next",
                onPressed: () {
                  AppNavigation.navigateTo(context, AppRoutes.chooseAvatar);
                }),
            VerticalGap(height: 8.h),
          ],
        ),
      ),
    );
  }
}
