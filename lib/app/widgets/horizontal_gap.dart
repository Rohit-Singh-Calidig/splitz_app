part of '../index.dart';

class HorizontalGap extends StatelessWidget {
  final double width;

  const HorizontalGap({
    super.key,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
    );
  }
}
