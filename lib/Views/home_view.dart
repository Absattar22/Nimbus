import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nimbus/Views/search_view.dart';
import 'package:nimbus/cubits/get%20weather%20cubit/get_weather_cubit.dart';
import 'package:nimbus/cubits/get%20weather%20cubit/get_weather_states.dart';
import 'package:nimbus/widgets/no_weather_body.dart';
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
      body: BlocBuilder<GetWeatherCubit, WeatherState>(
        builder: (context, state) {
          if (state is WeatherIntialState) {
            return const NoWeatherBody();
          } else if (state is WeatherLoadedState) {
            return const WeatherBody();
          } else if (state is WeatherLoadingState) {
            return const Center(
              child: CircularProgressIndicator(
                color: Color.fromARGB(255, 22, 112, 182),
              ),
            );
          } else {
            return const Text(
              'Error',
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontFamily: 'Kalam',
                fontWeight: FontWeight.bold,
              ),
            );
          }
        },
      ),
    );
  }
}
