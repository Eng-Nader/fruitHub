import 'package:flutter/material.dart';
import 'package:fruithub/core/routers/fruit_routers.dart';
import 'package:fruithub/featurs/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const FruitsHub());
}

class FruitsHub extends StatelessWidget {
  const FruitsHub({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: FruitRouters().generateRouter,
    );
  }
}
