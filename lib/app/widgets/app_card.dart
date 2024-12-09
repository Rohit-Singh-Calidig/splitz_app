part of "../index.dart";

class AppCard extends StatelessWidget {
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final Widget child;

  const AppCard({
    super.key,
    this.width,
    this.height,
    this.margin,
    this.padding,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.sp),
        color: AppColors.grayScale600,
      ),
      child: child,
    );
  }
}
