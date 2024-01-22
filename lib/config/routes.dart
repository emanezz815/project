import 'package:emanezz/profile_page.dart';
import 'package:emanezz/reset_password.dart';
import 'package:flutter/material.dart';

import '../edit_profile.dart';

class Routes {
  static const String profilePage = '/';
  static const String editProfilePage = 'editProfile';
  static const String resetPasswordPage = 'resetPassword';
}

class AppRoutes {
  static Route onGenerate(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.profilePage:
        return MaterialPageRoute(builder: (context) => const ProfilePage());
      case Routes.editProfilePage:
        return MaterialPageRoute(builder: (context) => const EditProfile());
        case Routes.resetPasswordPage:
      return MaterialPageRoute(builder: (context) => const ResetPassword());
      default:
        return MaterialPageRoute(builder: (context) => Container());
    }
  }
}
