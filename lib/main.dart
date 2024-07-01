import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nimbus/Views/home_view.dart';
import 'package:nimbus/cubits/get%20weather%20cubit/get_weather_cubit.dart';

void main() {
  runApp(const Nimbus());
}

class Nimbus extends StatelessWidget {
  const Nimbus({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeView(),
      ),
    );
  }
}
