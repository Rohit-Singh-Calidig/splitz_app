part of '../index.dart';

class AppRoutes {
  static const String splash = '/splash';
  static const String login = '/login';
  static const String signup = '/signup';
  static const String signupWithEmail = '/signupWithEmail';
  static const String onboarding = '/onboarding';
  static const String otp = '/otp';
  static const String chooseUsername = '/chooseUsername';
  static const String chooseAvatar = '/chooseAvatar';
  static const String main = '/main';
  static const String inappWebview = '/inappWebview';
  static const String createNewGroup = '/createNewGroup';
  static const String addMember = '/addMember';
  static const String settings = '/settings';

  static Map<String, WidgetBuilder> get routes {
    return {
      splash: (context) => const SplashScreen(),
      onboarding: (context) => const OnboardingScreen(),
      login: (context) => const LoginScreen(),
      signup: (context) => const SignupScreen(),
      signupWithEmail: (context) => const SignupWithEmailScreen(),
      otp: (context) => const OtpScreen(),
      chooseUsername: (context) => const ChooseUsernameScreen(),
      chooseAvatar: (context) => const ChooseAvatarScreen(),
      inappWebview: (context) => const InappWebview(),
      main: (context) => const MainScreen(),
      createNewGroup: (context) => const CreateNewGroupScreen(),
      addMember: (context) => const AddMemberScreen(),
    };
  }
}
