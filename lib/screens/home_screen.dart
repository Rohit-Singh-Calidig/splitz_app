import '../app/index.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            NoItemWidget(),
            // VerticalGap(height: 16.h),
            // SpaceBetweenWidget(
            //   widget1: Row(
            //     children: [
            //       Text(
            //         "Awaiting invites",
            //         style: Theme.of(context).textTheme.titleSmall,
            //       ),
            //       HorizontalGap(width: 4.w),
            //       Badge(
            //         label: Text(
            //           '1',
            //           style: Theme.of(context).textTheme.labelMedium?.copyWith(
            //                 fontSize: 11.25.sp,
            //                 fontWeight: FontWeight.w700,
            //                 color: AppColors.grayScale700,
            //               ),
            //         ),
            //         backgroundColor: AppColors.primaryGreen,
            //       ),
            //     ],
            //   ),
            //   widget2: IconButton(
            //     onPressed: () {},
            //     icon: Icon(
            //       Icons.chevron_right_rounded,
            //       size: 24.w,
            //       color: AppColors.grayScale300,
            //     ),
            //   ),
            // ),
            // VerticalGap(height: 4.h),
            // AppCard(
            //   width: 360.w,
            //   height: 100.h,
            //   margin: EdgeInsets.symmetric(horizontal: 16.w),
            //   padding: EdgeInsets.symmetric(horizontal: 16.w),
            //   child: SpaceBetweenWidget(
            //     widget1: Expanded(
            //       flex: 2,
            //       child: Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         children: [
            //           Text(
            //             "Texas Poker Team",
            //             style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            //                 fontFamily: Constants.fontUrbanist,
            //                 fontWeight: FontWeight.w700),
            //           ),
            //           Text(
            //             "Invited by Daniel",
            //             style: Theme.of(context).textTheme.bodySmall?.copyWith(
            //                 fontWeight: FontWeight.w400,
            //                 color: AppColors.grayScale300),
            //           ),
            //           VerticalGap(height: 4.h),
            //           const UserStackWidget(
            //             userAvatarList: [
            //               "https://letstryai.com/wp-content/uploads/2023/11/stable-diffusion-avatar-prompt-example-1.jpg",
            //               "https://letstryai.com/wp-content/uploads/2023/11/stable-diffusion-avatar-prompt-example-2.jpg",
            //               "https://letstryai.com/wp-content/uploads/2023/11/stable-diffusion-avatar-prompt-example-3.jpg",
            //               "https://letstryai.com/wp-content/uploads/2023/11/stable-diffusion-avatar-prompt-example-4.jpg",
            //               "https://letstryai.com/wp-content/uploads/2023/11/stable-diffusion-avatar-prompt-example-5.jpg"
            //             ],
            //           ),
            //         ],
            //       ),
            //     ),
            //     widget2: Expanded(
            //       flex: 1,
            //       child: AppElevatedButton(
            //         label: "Accept",
            //         onPressed: () {},
            //         height: 35.h,
            //       ),
            //     ),
            //   ),
            // ),
            // VerticalGap(height: 16.h),
            // SpaceBetweenWidget(
            //   widget1: Text(
            //     "My Groups",
            //     style: Theme.of(context).textTheme.titleSmall,
            //   ),
            //   widget2: IconButton(
            //     onPressed: () {},
            //     icon: Icon(
            //       Icons.chevron_right_rounded,
            //       size: 24.w,
            //       color: AppColors.grayScale300,
            //     ),
            //   ),
            // ),
            // VerticalGap(height: 8.h),
            // Row(
            //   children: [
            //     AppCard(
            //         width: 116.w,
            //         height: 160.h,
            //         child: Column(
            //           mainAxisAlignment: MainAxisAlignment.center,
            //           children: [
            //             Container(
            //               decoration: BoxDecoration(
            //                 color: AppColors.primaryGreen,
            //                 borderRadius: BorderRadius.circular(99.sp),
            //               ),
            //               padding: EdgeInsets.all(6.w),
            //               margin: EdgeInsets.only(bottom: 6.h),
            //               child: const Icon(
            //                 Icons.add,
            //                 color: AppColors.grayScale800,
            //               ),
            //             ),
            //             Text(
            //               "New Group",
            //               style: Theme.of(context)
            //                   .textTheme
            //                   .bodyMedium
            //                   ?.copyWith(
            //                       color: AppColors.primaryGreen,
            //                       fontFamily: Constants.fontSpaceGrotesk),
            //             ),
            //           ],
            //         )),
            //     HorizontalGap(width: 8.w),
            //     AppCard(
            //       width: 180.w,
            //       height: 160.h,
            //       padding: EdgeInsets.symmetric(horizontal: 8.w),
            //       child: Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           VerticalGap(height: 8.h),
            //           CircleAvatar(
            //             maxRadius: 24.sp,
            //           ),
            //           VerticalGap(height: 16.h),
            //           Text(
            //             "The Jokers",
            //             style: Theme.of(context)
            //                 .textTheme
            //                 .bodyMedium
            //                 ?.copyWith(color: AppColors.grayScale25),
            //           ),
            //           Text(
            //             "\$900",
            //             style: Theme.of(context)
            //                 .textTheme
            //                 .bodySmall
            //                 ?.copyWith(color: AppColors.grayScale100),
            //           ),
            //           Row(
            //             children: [
            //               Text(
            //                 "10 players",
            //                 style: Theme.of(context)
            //                     .textTheme
            //                     .bodySmall
            //                     ?.copyWith(
            //                         color: AppColors.grayScale100,
            //                         fontFamily: Constants.fontUrbanist,
            //                         fontWeight: FontWeight.w700),
            //               ),
            //               // UserStackWidget(),
            //             ],
            //           ),
            //         ],
            //       ),
            //     ),
            //   ],
            // ),
            // VerticalGap(height: 16.h),
            // SpaceBetweenWidget(
            //   widget1: Text(
            //     "My Games",
            //     style: Theme.of(context).textTheme.titleSmall,
            //   ),
            //   widget2: IconButton(
            //     onPressed: () {},
            //     icon: Icon(
            //       Icons.chevron_right_rounded,
            //       size: 24.w,
            //       color: AppColors.grayScale300,
            //     ),
            //   ),
            // ),
            // VerticalGap(height: 8.h),
            // ListView.builder(
            //     itemCount: 3,
            //     shrinkWrap: true,
            //     physics: const NeverScrollableScrollPhysics(),
            //     padding: EdgeInsets.symmetric(
            //       horizontal: 16.w,
            //     ),
            //     itemBuilder: (BuildContext context, int index) {
            //       return AppCard(
            //         height: 78.h,
            //         margin: EdgeInsets.symmetric(vertical: 4.h),
            //         padding:
            //             EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
            //         child: Row(
            //           children: [
            //             ClipRRect(
            //               borderRadius: BorderRadius.circular(99.sp),
            //               child: AppNetworkImage(
            //                   url:
            //                       "https://letstryai.com/wp-content/uploads/2023/11/stable-diffusion-avatar-prompt-example-6.jpg",
            //                   width: 40.w,
            //                   height: 40.w),
            //             ),
            //             HorizontalGap(width: 6.w),
            //             Column(
            //               crossAxisAlignment: CrossAxisAlignment.start,
            //               children: [
            //                 VerticalGap(height: 8.h),
            //                 Text(
            //                   "Havis",
            //                   style: Theme.of(context)
            //                       .textTheme
            //                       .bodyMedium
            //                       ?.copyWith(
            //                           fontWeight: FontWeight.w600,
            //                           color: AppColors.white),
            //                 ),
            //                 Text(
            //                   "Phong's Birthday",
            //                   style: Theme.of(context)
            //                       .textTheme
            //                       .bodySmall
            //                       ?.copyWith(color: AppColors.grayScale300),
            //                 ),
            //               ],
            //             ),
            //             Expanded(
            //               child: HorizontalGap(width: 1.w),
            //             ),
            //             Text(
            //               "+ \$2500",
            //               style: Theme.of(context)
            //                   .textTheme
            //                   .bodyMedium
            //                   ?.copyWith(color: AppColors.white),
            //             ),
            //           ],
            //         ),
            //       );
            //     })
          ],
        ),
      ),
    );
  }
}

class NoItemWidget extends StatelessWidget {
  const NoItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 148.h, left: 16.w, right: 16.w),
      child: Column(
        children: [
          Image.asset(
            AppImages.placeholder,
            width: 250.w,
            height: 200.h,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 12.h,
          ),
          Text(
            "Hi there, Great to have you!",
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontFamily: Constants.fontUrbanist,
                fontWeight: FontWeight.w700,
                color: AppColors.grayScale25),
          ),
          Text(
            "No games? It's the ideal time to kick things off!",
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: AppColors.grayScale300),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 16.h,
          ),
          AppElevatedButton(label: "Create New Group", onPressed: () {}),
        ],
      ),
    );
  }
}
