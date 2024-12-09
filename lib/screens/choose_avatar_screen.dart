import '../app/index.dart';

class ChooseAvatarScreen extends StatelessWidget {
  const ChooseAvatarScreen({super.key});

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
              "Choose your avatar",
              style: Theme.of(context).textTheme.displayLarge,
            ),
            VerticalGap(
              height: 8.h,
            ),
            Text(
              "Select an image to set as your profile picture",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            VerticalGap(
              height: 36.h,
            ),
            const Center(
              child: AvatarWidget(),
            ),
            Expanded(
              child: VerticalGap(
                height: 1.h,
              ),
            ),
            AppElevatedButton(
                label: "Next",
                onPressed: () {
                  // AppNavigation.navigateTo(context, AppRoutes.otp);
                }),
            VerticalGap(height: 8.h),
          ],
        ),
      ),
    );
  }
}

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 118.w,
      height: 118.w,
      decoration: BoxDecoration(
        color: AppColors.grayScale600,
        borderRadius: BorderRadius.circular(99.sp),
      ),
      child: Stack(
        children: [
          Center(
            child: Image.asset(
              AppImages.wink,
              width: 72.w,
              height: 72.w,
              fit: BoxFit.cover,
              color: AppColors.grayScale800,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 10.w,
            child: const AppImagePicker(),
          ),
        ],
      ),
    );
  }
}
