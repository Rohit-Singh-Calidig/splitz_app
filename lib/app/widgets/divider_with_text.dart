part of '../index.dart';

class DividerWithText extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  final Color? dividerColor;

  const DividerWithText({
    super.key,
    required this.text,
    this.textStyle,
    this.dividerColor = AppColors.darkGray,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Divider(color: dividerColor),
        ),
        HorizontalGap(width: 5.w),
        Text(
          text,
          style: textStyle,
        ),
        HorizontalGap(width: 5.w),
        Expanded(child: Divider(color: dividerColor)),
      ],
    );
  }
}
