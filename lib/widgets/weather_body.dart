import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nimbus/cubits/get%20weather%20cubit/get_weather_cubit.dart';
import 'package:nimbus/widgets/hours_card.dart';

class WeatherBody extends StatelessWidget {
  const WeatherBody({super.key});

  @override
  Widget build(BuildContext context) {
    var weatherModel = BlocProvider.of<GetWeatherCubit>(context).weatherModel;
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 280,
            child: Card(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              elevation: 0,
              color: const Color.fromARGB(255, 39, 41, 87),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Today',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 26,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                          Text(
                            '${weatherModel.lastUpdated.year}-${weatherModel.lastUpdated.month}-${weatherModel.lastUpdated.day}', // Convert integer to string
                            style: const TextStyle(
                              fontSize: 14,
                              color: Color.fromARGB(255, 196, 193, 193),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(
                        weatherModel.cityName,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 32,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                      Text(
                        'last updated: ${weatherModel.lastUpdated.hour.toString().padLeft(2, '0')}:${weatherModel.lastUpdated.minute.toString().padLeft(2, '0')}',
                        style: const TextStyle(
                          fontSize: 22,
                          color: Color.fromARGB(255, 196, 193, 193),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text:
                                      '${weatherModel.maxTempToday.round().toString()}/${weatherModel.minTempToday.round().toString()}',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 40,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ),
                                ),
                                WidgetSpan(
                                  child: Transform.translate(
                                    offset: const Offset(2, -10),
                                    child: const Text(
                                      '°C',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 32,
                                        color: Color(0xffFAC713),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Image.network(
                            "https:${weatherModel.imgToday}",
                            height: 100,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.only(left: 16),
            child: Text(
              'Next 3 Days',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 190,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 1,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: HoursCard(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
