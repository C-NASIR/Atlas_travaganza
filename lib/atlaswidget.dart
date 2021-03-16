import 'package:flutter/material.dart';
import 'atlas.dart';
import 'country.dart';
import 'countrywidget.dart';

class AtlasWidget extends StatelessWidget {
  final Atlas atlas;
  AtlasWidget({this.atlas});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: atlas.countries.length,
        itemBuilder: (context, index) {
          Country country = atlas.countries[index];
          return ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CountryWidget(country: country)));
              },
              title: Text(country.name),
              subtitle: Text('${country.dateFounded.year}'));
        });
  }
}
