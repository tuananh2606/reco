import 'package:dio/dio.dart';
import 'package:reco/data/models/meta/anilist/anilist_model.dart';
import 'package:reco/utils/constants/api_constants.dart';

class Anilist {
  static final dio = Dio();

  static Future<AnilistModel> searchManga(String query) async {
    final response = await dio.get('$API_ANILIST_URL/search/$query');
    if (response.statusCode == 200) {
      return AnilistModel.fromJson(response.data as Map<String, Object?>);
    } else {
      return throw Exception('Failed to search manga');
    }
  }

  static Future<AnilistModel> getListManga(String type, String page) async {
    final response = await dio.get('$API_ANILIST_URL/$type/$page');
    if (response.statusCode == 200) {
      return AnilistModel.fromJson(response.data as Map<String, Object?>);
    } else {
      return throw Exception('Failed to fetch $type manga');
    }
  }

  static Future<AnilistModel> getPopularManga(String id) async {
    final response = await dio.get('$API_ANILIST_URL/popular');
    if (response.statusCode == 200) {
      return AnilistModel.fromJson(response.data as Map<String, Object?>);
    } else {
      return throw Exception('Failed to fetch popular manga');
    }
  }

  static Future<AnilistModel> getInfoManga(String id) async {
    final response = await dio.get('$API_ANILIST_URL/info/$id');
    if (response.statusCode == 200) {
      return AnilistModel.fromJson(response.data as Map<String, Object?>);
    } else {
      return throw Exception('Failed to fetch info manga');
    }
  }

  static Future<AnilistModel> getPagesChapterManga(String id) async {
    final response = await dio.get('$API_ANILIST_URL/pages/$id');
    if (response.statusCode == 200) {
      return AnilistModel.fromJson(response.data as Map<String, Object?>);
    } else {
      return throw Exception('Failed to fetch info manga');
    }
  }
}
