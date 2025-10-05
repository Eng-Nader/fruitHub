import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fruithub/core/constants/constants.dart';
import 'package:fruithub/featurs/splash/presentation/views/splash_view.dart';

class FruitRouters {
  Route<dynamic>? generateRouter(RouteSettings settings) {
    switch (settings.name) {
      case kSplshView:
        return MaterialPageRoute(
          builder: (_) => const SplashView(),
        );
    }
    return null;
  }
}
