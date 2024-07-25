import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:reco/features/homepage/data/models/manga_model.dart';

class MangaRepository {
  static Future<MangaModel> fetchManga() async {
    //var client = http.Client();
    List<Manga> mangas = [];
    try {
      final response = await http.get(Uri.parse('https://mscrapers.vercel.app/manganato/latest'));

      final data = jsonDecode(response.body);
      // final results = data['results'] as List;
      // if (results.isEmpty) throw Exception('Failed');
      return MangaModel.fromJson(data as Map<String, dynamic>);
    } catch (e) {
      //log(e.toString());
      return throw Exception('Failed');
    }
  }
}
