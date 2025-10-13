import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../utils/services/server_locator_services.dart';
import '../../featurs/auth/data/repos/auth_repo_implemtaion.dart';
import '../../featurs/auth/data/services/firebase_auth_serves.dart';
import '../../featurs/auth/presentation/cubits/auth_cubit.dart';
import '../../featurs/auth/presentation/views/forget_password_view.dart';
import '../../featurs/auth/presentation/views/new_password_view.dart';
import '../../featurs/auth/presentation/views/one_time_password_view.dart';
import '../../featurs/home/presentation/views/home_view.dart';
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
      case kForgetPasswod:
        return MaterialPageRoute(
          builder: (_) => const ForgetPasswordView(),
        );
      case kOtp:
        return MaterialPageRoute(
          builder: (_) => const OneTimePasswordView(),
        );
      case kNewPassword:
        return MaterialPageRoute(
          builder: (_) => const NewPasswordView(),
        );
      case kHomeView:
        return MaterialPageRoute(
          builder: (_) => const HomeView(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(),
        );
    }
  }
}
