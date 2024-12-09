part of '../index.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String imageUrl;
  final String? firstName;
  final double? imageWidth;
  final double? imageHeight;

  const HomeAppBar({
    super.key,
    required this.imageUrl,
    required this.firstName,
    this.imageWidth,
    this.imageHeight,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      leading: Padding(
        padding: EdgeInsets.only(left: 8.w),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(99.sp),
          child: AppNetworkImage(
            url: imageUrl,
            width: imageWidth ?? 40.w,
            height: imageHeight ?? 40.w,
          ),
        ),
      ),
      leadingWidth: imageWidth ?? 56.w,
      title: Column(
        children: [
          Text(
            firstName == null ? "Hey!" : "Hey, $firstName",
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(fontWeight: FontWeight.w700, color: AppColors.white),
          ),
          Text(
            "Welcome back!",
            style: Theme.of(context)
                .textTheme
                .labelLarge
                ?.copyWith(color: AppColors.grayScale300),
          ),
        ],
      ),
      actions: [
        Container(
          width: 40.w,
          height: 40.w,
          margin: EdgeInsets.only(right: 8.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(99.sp),
            color: AppColors.grayScale700,
          ),
          child: Image.asset(
            AppImages.thunder,
            color: AppColors.white,
          ),
        ),
      ],
    );
  }
}

class MinimalAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;

  const MinimalAppBar({
    super.key,
    required this.title,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      title: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .bodyMedium
            ?.copyWith(fontFamily: Constants.fontSpaceGrotesk, color: AppColors.white),
      ),
      actions: actions ?? [],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
