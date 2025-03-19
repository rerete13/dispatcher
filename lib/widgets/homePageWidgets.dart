import 'package:flutter/material.dart';

import 'package:dispatcher/widgets/photo_widgets.dart';

class HomeList extends StatelessWidget {
  const HomeList({
    super.key,
  });

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
      itemBuilder: (context, index) => ListBuildItem(
          context,
          'Tuktuk $index',
          'Driver',
          tuktuk,
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/vehicleset');
              },
              icon: repair)),
    );
  }
}

Card ListBuildItem(context, title, subtitle, leading, trailing) {
  return Card(
    child: InkWell(
      onTap: () {
        Navigator.of(context).pushNamed('/drivers');
      },
      child: ListTile(
          leading: leading,
          title: Text(title),
          subtitle: Text(subtitle),
          trailing: trailing),
    ),
  );
}
