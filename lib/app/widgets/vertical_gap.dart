part of '../index.dart';

class VerticalGap extends StatelessWidget {
  final double height;

  const VerticalGap({
    super.key,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}
