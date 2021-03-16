import 'package:flutter/material.dart';
import 'atlas.dart';
import 'country.dart';

class CountryGatherer extends StatefulWidget {
  final Atlas atlas;
  CountryGatherer({this.atlas});
  @override
  _CountryGathererState createState() => _CountryGathererState();
}

class _CountryGathererState extends State<CountryGatherer> {
  String name = '';
  String population = '';
  String dateFounded = '';
  String leader = '';
  String regions = '';

  void _submit() {
    widget.atlas.addCountry(
        country: Country(
            name: name,
            population: int.parse(population),
            dateFounded: DateTime(int.parse(dateFounded)),
            leader: leader,
            regions: regions.split(' ')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Country Info'),
            leading: IconButton(
                icon: Icon(Icons.cancel),
                onPressed: () {
                  Navigator.pop(context);
                })),
        body: Column(children: [
          TextField(
              decoration: InputDecoration(labelText: 'Name'),
              onChanged: (text) {
                name = text;
              }),
          TextField(
              decoration: InputDecoration(labelText: 'Population'),
              onChanged: (text) {
                population = text;
              }),
          TextField(
              decoration: InputDecoration(labelText: 'Date Founded'),
              onChanged: (text) {
                dateFounded = text;
              }),
          TextField(
              decoration: InputDecoration(labelText: 'Leader'),
              onChanged: (text) {
                leader = text;
              }),
          TextField(
              decoration: InputDecoration(labelText: 'Regions'),
              onChanged: (text) {
                regions = text;
              }),
          ElevatedButton(
              child: Text('Submit'),
              onPressed: () {
                _submit();
                Navigator.pop(context);
              })
        ]));
  }
}
