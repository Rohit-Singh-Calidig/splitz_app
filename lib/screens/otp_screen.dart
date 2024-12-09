import 'dart:developer';
import '../app/index.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
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
              "OTP Verification",
              style: Theme.of(context).textTheme.displayLarge,
            ),
            VerticalGap(
              height: 8.h,
            ),
            Text(
              "We've sent a mail with an activation code to your Email - name@email.com",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            VerticalGap(
              height: 16.h,
            ),
            Pinput(
              showCursor: false,
              controller: TextEditingController(),
              length: 4,
              focusNode: focusNode,
              onCompleted: (pin) => log("PIN: $pin"),
              focusedPinTheme: PinTheme(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.primaryGreen,
                  ),
                  borderRadius: BorderRadius.circular(99.sp),
                ),
                width: 70.w,
                height: 70.w,
                textStyle: Theme.of(context)
                    .textTheme
                    .headlineLarge
                    ?.copyWith(fontSize: 24.sp),
              ),
              defaultPinTheme: PinTheme(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.grayScale400,
                  ),
                  borderRadius: BorderRadius.circular(99.sp),
                ),
                width: 70.w,
                height: 70.w,
                textStyle: Theme.of(context)
                    .textTheme
                    .headlineLarge
                    ?.copyWith(fontSize: 24.sp),
              ),
            ),
            Expanded(
              child: VerticalGap(height: 1.h),
            ),
            AppElevatedButton(
                label: "Verify",
                onPressed: () {
                  AppNavigation.navigateTo(context, AppRoutes.chooseUsername);
                }),
            VerticalGap(height: 8.h),
          ],
        ),
      ),
    );
  }
}
