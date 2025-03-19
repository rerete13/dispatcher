import 'package:dispatcher/widgets/vehicleStatePageWidget.dart';
import 'package:dispatcher/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:dispatcher/widgets/photo_widgets.dart';

class VehicleStatePage extends StatelessWidget {
  const VehicleStatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Update vehicle state',
            style: TextStyle(
              color: Colors.orange,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: arrow,
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: VehicleListWidget(),
        floatingActionButton: FloatingButton(
          text: 'Save',
          onPressed: () {
            print('object');
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
