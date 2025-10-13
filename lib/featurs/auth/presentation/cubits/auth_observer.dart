import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

class AuthObserver implements BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    log('change of Auth cubit is $change');
  }

  @override
  void onClose(BlocBase bloc) {
    log('this cubit is close $bloc');
  }

  @override
  void onCreate(BlocBase bloc) {
    log('this cubit is create $bloc');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    // TODO: implement onError
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    // TODO: implement onEvent
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    // TODO: implement onTransition
  }
}
