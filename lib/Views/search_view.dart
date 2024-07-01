
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nimbus/cubits/get%20weather%20cubit/get_weather_cubit.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 23, 23, 53),
      appBar: AppBar(
        leading: IconButton(
          color: Colors.white,
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: const Color.fromARGB(255, 23, 23, 53),
        title: const Text(
          'City Searching',
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontFamily: 'Kalam',
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          onSubmitted: (value) async {
             var getWeatherCubit = BlocProvider.of<GetWeatherCubit>(context);
             getWeatherCubit.getWeather(cityName :value);

            Navigator.pop(context);
          },
          cursorColor: Colors.white,
          style: const TextStyle(color: Colors.white), // User input text color
          decoration: const InputDecoration(
            filled: true, // Fill the TextField background
            fillColor: Color.fromARGB(255, 23, 23, 53), // Background color
            contentPadding: EdgeInsets.symmetric(
                vertical: 15.0, horizontal: 20.0), // Padding
            prefixIcon: Icon(
              Icons.search,
              color: Color.fromARGB(255, 201, 160, 78),
            ),
            hintText: 'Ex: Cairo',
            hintStyle: TextStyle(color: Color.fromARGB(255, 155, 152, 152)),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromARGB(255, 56, 58, 121),
              ),
              borderRadius:
                  BorderRadius.all(Radius.circular(25.0)), // Rounded corners
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromARGB(255, 100, 104, 217),
              ),
              borderRadius:
                  BorderRadius.all(Radius.circular(25.0)), // Rounded corners
            ),
          ),
        ),
      ),
    );
  }
}

