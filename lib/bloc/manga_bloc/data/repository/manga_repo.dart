import 'package:dio/dio.dart';
import 'package:reco/bloc/manga_bloc/data/models/manga_model.dart';
import 'package:reco/utils/constants/api_constants.dart';

class MangaRepository {
  static final dio = Dio();

  static Future<MangaModel> fetchManga(String type, String page) async {
    try {
      final response = await dio.get('$API_URL/$type/$page');
      if (response.statusCode == 200) {
        return MangaModel.fromJson(response.data as Map<String, Object?>);
      } else {
        return throw Exception('Failed to fetch manga');
      }
    } catch (e) {
      //log(e.toString());
      return throw Exception('Something went wrong');
    }
  }

  static Future<MangaModel> searchManga(String query) async {
    final response = await dio.get('$API_URL/search/$query');
    if (response.statusCode == 200) {
      return MangaModel.fromJson(response.data as Map<String, Object?>);
    } else {
      return throw Exception('Failed to search manga');
    }
  }

  static Future<MangaDetails> getInfoManga(String id) async {
    final response = await dio.get('$API_URL/info/$id');
    if (response.statusCode == 200) {
      return MangaDetails.fromJson(response.data as Map<String, Object?>);
    } else {
      return throw Exception('Failed to fetch info manga');
    }
  }

  static Future<PageModel> getPagesChapterManga(String id) async {
    final response = await dio.get('$API_URL/pages/$id');
    if (response.statusCode == 200) {
      return PageModel.fromJson(response.data as Map<String, Object?>);
    } else {
      return throw Exception('Failed to fetch info manga');
    }
  }
}
