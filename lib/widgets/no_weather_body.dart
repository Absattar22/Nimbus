
import 'package:flutter/material.dart';

class NoWeatherBody extends StatelessWidget {
  const NoWeatherBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.cloud_off,
            size: 180,
            color: Color.fromARGB(255, 42, 185, 236),
          ),
          SizedBox(height: 20),
          Text(
            'There is No weather yet  ',
            style: TextStyle(
                fontSize: 22.0, color: Color.fromARGB(255, 255, 255, 255)),
            textAlign: TextAlign.center,
          ),
          Text('please search to add one.',
              style: TextStyle(
                  fontSize: 22.0, color: Color.fromARGB(255, 255, 255, 255)),
              textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
