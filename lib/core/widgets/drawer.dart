import 'package:flutter/material.dart';


class WeatherDrawer extends StatelessWidget {
  const WeatherDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).cardColor,
      child: ListView(
        padding: EdgeInsets.zero,
        children: const <Widget>[],
      ),
    );
  }
}
