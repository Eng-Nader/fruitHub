import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../featurs/auth/presentation/views/sign_up_view.dart';
import '../../featurs/auth/presentation/views/login_view.dart';
import '../constants/constants.dart';
import '../../featurs/on_boarding/presentation/views/on_borading_view.dart';
import '../../featurs/splash/presentation/views/splash_view.dart';

class FruitRouters {
  Route<dynamic> generateRouter(RouteSettings settings) {
    switch (settings.name) {
      case kSplshView:
        return MaterialPageRoute(
          builder: (_) => const SplashView(),
        );
      case kOnboarding:
        return MaterialPageRoute(
          builder: (_) => const OnBoradingView(),
        );
      case kLoginView:
        return MaterialPageRoute(
          builder: (_) => const LoginView(),
        );
      case kSingUpView:
        return MaterialPageRoute(
          builder: (_) => const SignUpView(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(),
        );
    }
  }
}
