import 'package:dispatcher/widgets/driverPageWidget.dart';
import 'package:dispatcher/widgets/photo_widgets.dart';
import 'package:flutter/material.dart';
import 'package:dispatcher/widgets/widgets.dart';

class DriverPage extends StatefulWidget {
  const DriverPage({super.key});

  @override
  State<DriverPage> createState() => _DriverPageState();
}

class _DriverPageState extends State<DriverPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Select driver',
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
        body: driverListWidget(),
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
