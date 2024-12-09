part of "../index.dart";

class AppNavigation {
  static void navigateTo(BuildContext context, String routeName) {
    Navigator.pushNamed(context, routeName);
  }

  static void navigateWithReplacement(BuildContext context, String routeName) {
    Navigator.pushReplacementNamed(context, routeName);
  }

  static void goBack(BuildContext context) {
    Navigator.pop(context);
  }
}
