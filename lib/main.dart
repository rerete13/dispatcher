import 'package:dispatcher/pages/driver_screan.dart';
import 'package:dispatcher/pages/vehicle_state_state_screan.dart';
import 'package:flutter/material.dart';

import 'package:dispatcher/pages/home_screan.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Krupa Dispatcher',
      home: const HomePage(),
      routes: {
        '/home': (context) => const HomePage(),
        '/drivers': (context) => const DriverPage(),
        '/vehicleset': (context) => const VehicleStatePage(),
      },
    );
  }
}
