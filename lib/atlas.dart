import 'country.dart';
import 'package:flutter/material.dart';

class Atlas extends ChangeNotifier {
  List<Country> countries;

  Atlas() {
    countries = [
      Country(
          name: 'Canada',
          population: 37000000,
          dateFounded: DateTime(1867),
          leader: ' Justin Trudeau',
          regions: [
            'British Columbia',
            'Alberta',
            'Saskatchewan',
            'Manitoba',
            'Ontario',
            'Quebec'
          ]),
      Country(
          name: 'Belarus',
          population: 9408400,
          dateFounded: DateTime(1990, 7),
          leader: 'Roman Golovchenko',
          regions: ['Brest', 'Gomel', 'Grodno', 'Mogilev', 'Minsk', 'Vitebsk']),
      Country(
          name: 'Norway',
          population: 5391369,
          dateFounded: DateTime(1814),
          leader: 'Erna Solberg',
          regions: [
            'West-Agder',
            'Aust-Agder',
            'Telemark',
            'Buskerud',
            'Rogaland',
            'Hordaland',
            'Sogn og Fjordane'
          ]),
    ];
  }

  void addCountry({Country country}) {
    countries.add(country);
    notifyListeners();
  }

  void removeCountry({Country country}) {
    countries.remove(country);
    notifyListeners();
  }

  Country pickCountryAtRandom() {
    return countries[0];
  }
}
