part of "../index.dart";

class UserStackWidget extends StatelessWidget {
  final List<String>? userAvatarList;

  const UserStackWidget({
    super.key,
    this.userAvatarList = const [],
  });

  @override
  Widget build(BuildContext context) {
    int itemCount =
        ((userAvatarList?.length ?? 0) > 2 ? 3 : (userAvatarList?.length ?? 0));

    return SizedBox(
      width: (itemCount + 1) * 24.w,
      height: 24.h,
      child: Stack(
        children: [
          for (int index = 0; index < itemCount + 1; index++) ...[
            Positioned(
              top: 0,
              left: index * 16,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(99.sp),
                child: AppNetworkImage(
                    url: userAvatarList?[index] ?? "",
                    width: 24.w,
                    height: 24.w),
              ),
            ),
            if (index == itemCount)
              Positioned(
                top: 0,
                left: index * 24,
                child: Badge(
                  padding: EdgeInsets.all(6.w),
                  label: Text(
                    "${userAvatarList!.length}+",
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                          fontSize: 11.25.sp,
                          fontWeight: FontWeight.w700,
                          color: AppColors.white,
                        ),
                  ),
                  backgroundColor: AppColors.grayScale,
                ),
              ),
          ],
        ],
      ),
    );
  }
}
