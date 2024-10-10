import 'package:e_commerce_app/presentation/forgot_password/forgot_password_view.dart';
import 'package:e_commerce_app/presentation/login/login_view.dart';
import 'package:e_commerce_app/presentation/main/main_view.dart';
import 'package:e_commerce_app/presentation/register/register_view.dart';
import 'package:e_commerce_app/presentation/splash/splash_view.dart';
import 'package:e_commerce_app/presentation/store_detailes/store_detailes_view.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String splashRoute = "/";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String forgotPasswordRoute = "/forgotPassword";
  static const String mainRoute = "/main";
  static const String storeDetailesRoute = "/storeDetailes";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (context) => const SplashView());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (context) => const LoginView());
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (context) => const RegisterView());
      case Routes.forgotPasswordRoute:
        return MaterialPageRoute(
            builder: (context) => const ForgotPasswordView());
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (context) => const MainView());
      case Routes.storeDetailesRoute:
        return MaterialPageRoute(
            builder: (context) => const StoreDetailesView());
      default:
        return MaterialPageRoute(builder: (context) => const SplashView());
    }
  }
}
