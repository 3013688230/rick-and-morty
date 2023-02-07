import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/episodes_model/episode.dart';

class EpisodeRepo {
  final url = 'https://rickandmortyapi.com/api/episode';

  Future<Episode> getEpisode(int page, String name) async {
    try {
      var response = await http.get(Uri.parse('$url?page=$page&name=$name'));

      var jsonResult = json.decode(response.body);
      return Episode.fromJson(jsonResult);
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
