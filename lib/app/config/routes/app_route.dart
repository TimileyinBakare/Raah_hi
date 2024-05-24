import 'package:flutter/material.dart';
import 'package:raah_hi/app/config/routes/app_page.dart';
import 'package:raah_hi/app/modules/auth/view/forgot_pass.dart';
import 'package:raah_hi/app/modules/auth/view/login.dart';
import 'package:raah_hi/app/modules/auth/view/otp.dart';
import 'package:raah_hi/app/modules/auth/view/register.dart';
import 'package:raah_hi/app/modules/chats/view/chat.dart';
import 'package:raah_hi/app/modules/contributions/view/contributions.dart';
import 'package:raah_hi/app/modules/home/view/home.dart';
import 'package:raah_hi/app/modules/auth/components/onboarding.dart';
import 'package:raah_hi/app/modules/profile/view/profile.dart';
import 'package:raah_hi/app/widgets/bottomnavbar.dart';

class AppRoute {
  static Route easyAnimationRoute(Widget child) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween = Tween(begin: begin, end: end).chain(
          CurveTween(curve: curve),
        );

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  static Route<dynamic> generalRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return easyAnimationRoute(const SplashScreen());
      case login:
        return easyAnimationRoute(const Login());
      case register:
        return easyAnimationRoute(const Register());
      case forgretpass:
        return easyAnimationRoute(const ForgetPassword());
      case otp:
        return easyAnimationRoute(const Otp());
      case bottomnavigator:
        return easyAnimationRoute(const CustomBottomNavigation());
      case home:
        return easyAnimationRoute(const Home());
      case profile:
        return easyAnimationRoute(const ProfileScreen());
      case chat:
        return easyAnimationRoute(const ChatScreen());
      case contribution:
        return easyAnimationRoute(const Contributions());
     
      default:
        return easyAnimationRoute(const Login());
    }
  }
}
