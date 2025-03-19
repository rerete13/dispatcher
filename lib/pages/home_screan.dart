import 'package:dispatcher/pages/driver_screan.dart';
import 'package:dispatcher/pages/vehicle_state_state_screan.dart';
import 'package:flutter/material.dart';
import 'package:dispatcher/widgets/homePageWidgets.dart';
import 'package:dispatcher/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Krupa Dispatcher',
            style: TextStyle(
              color: Colors.orange,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.white,
        ),
        body: Container(
          color: Colors.blueGrey[30],
          child: HomeList(),
        ),
        floatingActionButton: FloatingButton(
          text: 'Update',
          onPressed: () {
            dialogbuilder(
              context,
              'Oops...',
              'Problems with intternet connection',
            );
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
      routes: {
        '/drivers': (context) => const DriverPage(),
        '/vehicleset': (context) => const VehicleStatePage(),
      },
    );
  }
}
