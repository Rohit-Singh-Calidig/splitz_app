/// This file is responsible for managing the theme-related dependencies
/// and resources in the application.
///
/// It is divided into two sections:
/// 1. **Imports**: Contains external package imports like `flutter/material.dart` for
///    Flutter's material design widgets and `flutter_screenutil.dart` for responsive
///    sizing. It also imports internal files such as `colors.dart` and `constants.dart`
///    that define the color scheme and constant values for the theme.
///
/// 2. **Parts**: This section includes the `part` directive which links to the `theme.dart`
///    file. The `theme.dart` file contains the specific definitions and customization
///    of the application's theme (e.g., color schemes, font styles, etc.).
///
/// This file serves as a centralized location for the theme-related setup and allows
/// for easy management and scalability of the app's appearance.
library;

// =========== import ===========

export 'package:flutter/material.dart';
export 'package:flutter/widgets.dart';
export 'package:flutter_inappwebview/flutter_inappwebview.dart';
export 'package:flutter_screenutil/flutter_screenutil.dart';
export 'package:pinput/pinput.dart';
export 'package:flutter/gestures.dart';
export 'package:image_picker/image_picker.dart';
export 'package:cached_network_image/cached_network_image.dart';

// import: screens
import 'package:splitz_app/screens/main_screen.dart';
import 'package:splitz_app/screens/new_group/add_member_screen.dart';
import 'package:splitz_app/screens/new_group/create_new_group_screen.dart';

import 'index.dart';
import '../../screens/choose_username_screen.dart';
import '../../screens/onboarding_screen.dart';
import '../../screens/otp_screen.dart';
import '../../screens/signup_with_email_screen.dart';
import '../../screens/login_screen.dart';
import '../../screens/signup_screen.dart';
import '../../screens/splash_screen.dart';
import '../../screens/choose_avatar_screen.dart';

// import: widgets

// =========== part ===========

part 'colors.dart';
part 'theme.dart';
part 'constants.dart';
part 'images.dart';
part 'navigation/app_navigation.dart';
part 'navigation/app_routes.dart';
part 'widgets/app_buttons.dart';
part 'widgets/app_icons.dart';
part 'widgets/app_image_picker.dart';
part 'widgets/app_titlebar.dart';
part 'widgets/app_network_image.dart';
part 'widgets/app_input_field.dart';
part 'widgets/divider_with_text.dart';
part 'widgets/horizontal_gap.dart';
part 'widgets/inapp_webview.dart';
part 'widgets/vertical_gap.dart';
part 'widgets/space_between_widget.dart';
part 'widgets/app_card.dart';
part 'widgets/user_stack_widget.dart';