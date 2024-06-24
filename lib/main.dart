import 'package:flutter/material.dart';
import 'package:nimbus/Views/home_view.dart';

void main() {
  runApp(const Nimbus());
}

class Nimbus extends StatelessWidget {
  const Nimbus({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
