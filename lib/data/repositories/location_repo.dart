import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/locations_model/locations.dart';

class LocationRepo {
  final url = 'https://rickandmortyapi.com/api/location';

  Future<Location> getLocation(int page, String name) async {
    try {
      var response = await http.get(Uri.parse('$url?page=$page&name=$name'));

      var jsonResult = json.decode(response.body);
      return Location.fromJson(jsonResult);
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
