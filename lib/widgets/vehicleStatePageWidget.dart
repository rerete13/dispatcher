import 'package:flutter/material.dart';

import 'package:dispatcher/widgets/photo_widgets.dart';

class VehicleListWidget extends StatefulWidget {
  const VehicleListWidget({
    super.key,
  });

  @override
  State<VehicleListWidget> createState() => _VehicleListWidgetState();
}

class _VehicleListWidgetState extends State<VehicleListWidget> {
  int? _selectedIndex;

  @override
  Widget build(BuildContext context) {
    final savePadding = MediaQuery.of(context).padding.bottom;
    double bottomPadding = savePadding * 3.5;

    return ListView.separated(
      padding: EdgeInsets.only(
        left: 16,
        right: 16,
        top: 16,
        bottom: bottomPadding,
      ),
      itemCount: 10,
      separatorBuilder: (context, index) => SizedBox(
        height: 8,
      ),
      itemBuilder: (context, index) => Card(
        child: InkWell(
          onTap: () {
            _selectedIndex = index;
            setState(() {});
          },
          child: ListTile(
            leading: repair,
            title: Text('Repair'),
            trailing: _selectedIndex == index ? check : null,
          ),
        ),
      ),
    );
  }
}
