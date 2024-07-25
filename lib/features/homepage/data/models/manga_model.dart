import 'package:equatable/equatable.dart';

class MangaModel extends Equatable {
  MangaModel({
    required this.status,
    required this.results,
  });

  final int status;
  final List<Manga> results;

  @override
  List<Object?> get props => [
        status,
        results,
      ];

  factory MangaModel.fromJson(Map<String, dynamic> json) {
    return MangaModel(
      status: json['status'] as int,
      results: List<Manga>.from((json['results'] as List<Map<String, dynamic>>).map((x) => Manga.fromJson(x))),
    );
  }
}

class Manga {
  Manga({
    required this.img,
    required this.title,
    required this.id,
    required this.date,
    required this.author,
    required this.description,
  });
  factory Manga.fromJson(Map<String, dynamic> json) => Manga(
        img: json['img'] as String,
        title: json['title'] as String,
        id: json['id'] as String,
        date: json['date'] as String,
        author: json['author'] as String,
        description: json['description'] as String,
      );

  final String img;
  final String title;
  final String id;
  final String date;
  final String author;
  final String description;
}
