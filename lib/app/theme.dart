part of "index.dart";

class AppTheme {
  static ThemeData get themeData {
    return ThemeData(
      useMaterial3: true,
      fontFamily: Constants.fontSpaceGrotesk,
      scaffoldBackgroundColor: Colors.black,
      appBarTheme: const AppBarTheme(
        color: AppColors.black,
        iconTheme: IconThemeData(
          color: AppColors.white,
        ),
      ),
      textTheme: TextTheme(
        // TextStyle = 32px
        headlineLarge: TextStyle(
          color: AppColors.titleTextColor,
          fontSize: 32.sp,
          fontWeight: FontWeight.w500,
        ),
        displayLarge: TextStyle(
          color: AppColors.titleTextColor,
          fontSize: 32.sp,
          fontWeight: FontWeight.bold,
        ),
        // TextStyle = 20px
        titleSmall: TextStyle(
          color: AppColors.grayScale25,
          fontSize: 20.sp,
          fontWeight: FontWeight.w500,
        ),
        // TextStyle = 18px
        bodyLarge: TextStyle(
          color: AppColors.subtitleTextColor,
          fontSize: 18.sp,
        ),
        // TextStyle = 16px
        bodyMedium: TextStyle(
          color: AppColors.subtitleTextColor,
          fontSize: 16.sp,
          fontFamily: Constants.fontUrbanist,
          fontWeight: FontWeight.w500,
        ),
        // TextStyle = 14px
        bodySmall: TextStyle(
          color: AppColors.subtitleTextColor,
          fontSize: 14.sp,
          fontFamily: Constants.fontUrbanist,
          fontWeight: FontWeight.w500,
        ),
        // TextStyle = 12px
        labelLarge: TextStyle(
          color: AppColors.subtitleTextColor,
          fontSize: 12.sp,
          fontFamily: Constants.fontUrbanist,
          fontWeight: FontWeight.w500,
        ),
        // TextStyle = 11px
        labelMedium: TextStyle(
          color: AppColors.grayScale700,
          fontSize: 11.sp,
          fontFamily: Constants.fontUrbanist,
          fontWeight: FontWeight.w500,
        ),

      ),
    );
  }
}
