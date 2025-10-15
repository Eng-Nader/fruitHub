import 'package:flutter/animation.dart';

class AuthSocialModel {
  final String title, image;
  final VoidCallback onPressen; 

  const AuthSocialModel( {
    required this.onPressen, 
    required this.image,
    required this.title,
  });
}
