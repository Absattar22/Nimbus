import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nimbus/cubits/get%20weather%20cubit/get_weather_cubit.dart';
import 'package:nimbus/models/weather_model.dart';

class HoursCard extends StatefulWidget {
  const HoursCard({super.key});

  @override
  State<HoursCard> createState() => _HoursCardState();
}

class _HoursCardState extends State<HoursCard> {
  @override
  Widget build(BuildContext context) {
    var weatherModel = BlocProvider.of<GetWeatherCubit>(context)
        .weatherModel; // Assuming this provides the complete WeatherModel data

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        buildWeatherCard(
          date: weatherModel.dateTomorrow,
          maxTemp: weatherModel.maxTempTomorrow,
          minTemp: weatherModel.minTempTomorrow,
          img: weatherModel.imgTomorrow,
        ),
        buildWeatherCard(
          date: weatherModel.dateAfterTomorrow,
          maxTemp: weatherModel.maxTempAfterTomorrow,
          minTemp: weatherModel.minTempAfterTomorrow,
          img: weatherModel.imgAfterTomorrow,
        ),
        buildWeatherCard(
          date: weatherModel.dateAfterAfterTomorrow,
          maxTemp: weatherModel.maxTempAfterAfterTomorrow,
          minTemp: weatherModel.minTempAfterAfterTomorrow,
          img: weatherModel.imgAfterAfterTomorrow,
        ),
      ],
    );
  }

  Widget buildWeatherCard(
      {required String date,
      required double maxTemp,
      required double minTemp,
      required String img}) {
    return SizedBox(
      height: 190,
      width: 200,
      child: Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        elevation: 0,
        color: const Color.fromARGB(255, 39, 41, 87),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 60), // Adjust space for image
                  Text(
                    date,
                    style: const TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 196, 193, 193),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text:
                                  '${maxTemp.round()}/${minTemp.round()}', // Ensure no decimal places
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 36,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                            WidgetSpan(
                              child: Transform.translate(
                                offset: Offset(2, -10),
                                child: const Text(
                                  '°C',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24,
                                    color: Color(0xffFAC713),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              top: 8,
              right: 8,
              child: Image.network(
                "https:$img",
                height: 60,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
