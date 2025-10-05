import 'package:flutter/material.dart';

void main() {
  runApp(
    const FruitHub(),
  );
}

class FruitHub extends StatelessWidget {
  const FruitHub({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
            child: Container(
          height: 100,
          width: 100,
          decoration: const BoxDecoration(
            color: Colors.black,
          ),
          child: Image.asset(
            'assets/images/fruit_logo.png',
            fit: BoxFit.cover,
          ),
        )),
      ),
    );
  }
}
