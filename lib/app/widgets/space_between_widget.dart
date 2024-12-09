part of "../index.dart";

class SpaceBetweenWidget extends StatelessWidget {
  final Widget widget1;
  final Widget widget2;

  const SpaceBetweenWidget({
    super.key,
    required this.widget1,
    required this.widget2,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        widget1,
        widget2,
      ],
    );
  }
}
