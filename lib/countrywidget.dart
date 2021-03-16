import 'package:flutter/material.dart';
import 'country.dart';

class CountryWidget extends StatelessWidget {
  final Country country;
  CountryWidget({this.country});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('${country.name}')),
      body: Center(
        child: ListView(children: [
          ListTile(title: Text('Leader: ${country.leader}')),
          Divider(height: 2.0, thickness: 2.0),
          ListTile(title: Text('Population: ${country.population}')),
          Divider(height: 2.0, thickness: 2.0),
          ListTile(title: Text('# of Regions: ${country.regions.length}')),
          Divider(height: 2.0, thickness: 2.0),
        ]),
      ),
    );
  }
}
