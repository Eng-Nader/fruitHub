import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fruithub/core/constants/constants.dart';
import 'package:fruithub/core/routers/fruit_routers.dart';
import 'package:fruithub/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // todo call a flutter engine and configration it
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    const FruitsHub(),
  );
}

class FruitsHub extends StatelessWidget {
  const FruitsHub({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: FruitRouters().generateRouter,
      initialRoute: kSplshView,
    );
  }
}
