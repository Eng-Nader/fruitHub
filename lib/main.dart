import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fruithub/featurs/home/presentation/views/home_view.dart';
import 'core/utils/services/server_locator_services.dart';
import 'core/utils/services/bloc_observer_services.dart';
import 'core/utils/services/shared_prefrences_services.dart';
import 'core/constants/constants.dart';
import 'generated/l10n.dart' show S;
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // todo call a flutter engine and configration it
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await SharedPrefrencesServices.init();
  runApp(
    const FruitsHub(),
  );
  Bloc.observer = BlocObserverServices();
  configrationInjection();
}

class FruitsHub extends StatelessWidget {
  const FruitsHub({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: const Locale('ar'),
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      theme: ThemeData(
        fontFamily: kFontFamily,
        scaffoldBackgroundColor: Colors.white,
      ),
      supportedLocales: S.delegate.supportedLocales,
      debugShowCheckedModeBanner: false,
      home: const HomeView(),
    );
  }
}
