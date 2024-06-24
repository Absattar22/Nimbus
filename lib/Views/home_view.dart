import 'package:flutter/material.dart';
import 'package:nimbus/Views/search_view.dart';
import 'package:nimbus/widgets/weather_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 23, 23, 53),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 23, 23, 53),
        title: const Text(
          'Nimbus',
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontFamily: 'Kalam',
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SearchView()),
              );
            },
          ),
        ],
      ),
      body: const WeatherBody(),
    );
  }
}
