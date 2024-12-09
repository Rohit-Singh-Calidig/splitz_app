part of "../index.dart";

class AppElevatedButton extends StatelessWidget {
  final String label;
  final TextStyle? labelStyle;
  final VoidCallback? onPressed;
  final bool isDisabled;
  final double? width;
  final double? height;

  const AppElevatedButton({
    super.key,
    required this.label,
    this.labelStyle,
    required this.onPressed,
    this.isDisabled = false,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: isDisabled ? null : onPressed,
      // foregroundColor: isDisabled ? AppColors.disabledGray : AppColors.primaryGreen,
      color: isDisabled ? AppColors.disabledGray : AppColors.primaryGreen,
      // minimumSize: Size(360.w, 50.h),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(99.sp),
      ),
      minWidth: width ?? 360.w,
      height: height ?? 50.h,
      child: Text(
        label,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: labelStyle ??
            TextStyle(
              color: AppColors.actionTextColor,
              fontSize: 16.sp,
              fontFamily: Constants.fontSpaceGrotesk,
              fontWeight: FontWeight.w500,
            ),
      ),
    );
  }
}

class AppOutlinedButton extends StatelessWidget {
  final String label;
  final TextStyle? labelStyle;
  final VoidCallback? onPressed;
  final String localImagePath;
  final Color? imageColor;
  final double? width;
  final double? height;
  final double? imageWidth;
  final double? imageHeight;
  final Color? outlineColor;

  const AppOutlinedButton({
    super.key,
    required this.label,
    this.labelStyle,
    required this.onPressed,
    required this.localImagePath,
    this.imageColor,
    this.width,
    this.height,
    this.imageWidth,
    this.imageHeight,
    this.outlineColor,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: onPressed,
      icon: Image.asset(
        localImagePath,
        color: imageColor,
        width: imageWidth,
        height: imageHeight,
      ),
      label: Text(
        label,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: labelStyle ??
            TextStyle(
              color: AppColors.grayScale200,
              fontSize: 16.sp,
              fontFamily: Constants.fontUrbanist,
              fontWeight: FontWeight.w600,
            ),
      ),
      style: OutlinedButton.styleFrom(
        backgroundColor: AppColors.grayScale800,
        side: BorderSide(color: outlineColor ?? AppColors.grayScale400),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(99.sp),
        ),
        minimumSize: Size(width ?? 360.w, height ?? 58.h),
      ),
    );
  }
}
