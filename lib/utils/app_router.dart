import 'package:get/get.dart';
import 'package:transferme/view/auth_view/views/login_view.dart';
import 'package:transferme/view/auth_view/views/sign_up_view.dart';
import 'package:transferme/view/bottom_nav_bar_view/views/bottom_navigation_bar_view.dart';
import 'package:transferme/view/profile_view/views/profile_view.dart';

import '../view/onbaording_view/view/onboarding_view.dart';

class AppRouter {
  static String onboardingViewPath = '/';
  static String loginViewPath = '/login';
  static String signViewPath = '/sing';
  static String profileViewPath = '/profile';
  static String navBarViewPath = '/bNav';

  static List<GetPage<dynamic>> getRoutes() {
    return [
       GetPage(name: onboardingViewPath, page: () => const OnboardingView()),
       GetPage(name: loginViewPath, page: () => const LoginView()),
       GetPage(name: signViewPath, page: () => const SignUpView()),
       GetPage(name: profileViewPath, page: () => const ProfileView()),
       GetPage(name: navBarViewPath, page: () =>  BottomNavigationBarView()),
    ];
  }
}
