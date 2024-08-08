import 'dart:developer';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:reco/data/models/favourite/favourite_model.dart';
import 'package:reco/data/models/history/history_model.dart';
import 'package:sqflite/sqflite.dart';

class RecoDatabase {
  RecoDatabase._init();
  static final RecoDatabase instance = RecoDatabase._init();
  static const _databaseName = 'reco_database.db';
  static const _tableFavouriteName = 'favourite';
  static const _tableHistoryName = 'history';
  static const _columnId = 'id';
  static const _columnObjectId = 'objectId';
  static const _columnTitle = 'title';
  static const _columnImage = 'image';
  static const _databaseVersion = 1;

  static Database? _database;

  Future<Database> get database async {
    _database ??= await _initDatabase();
    return _database!;
  }

  //Favourite
  Future<List<FavouriteModel>> listFavourite() async {
    final db = await database;
    final results = await db.query(_tableFavouriteName, orderBy: 'id DESC');
    return results.map((json) => FavouriteModel.fromJson(json)).toList();
  }

  Future<FavouriteModel?> getFavouriteItem(String objectId) async {
    final db = await database;
    final results = await db.query(
      _tableFavouriteName,
      where: '$_columnObjectId = ?',
      whereArgs: [objectId],
    );
    if (results.isNotEmpty) {
      return FavouriteModel.fromJson(results.first);
    }
    return null;
  }

  Future<FavouriteModel> insertFavouriteItem(FavouriteModel favouriteItem) async {
    final db = await database;
    final id =
        await db.insert(_tableFavouriteName, favouriteItem.toJson(), conflictAlgorithm: ConflictAlgorithm.replace);
    return favouriteItem.copyWith(id: id);
  }

  Future<void> deleteFavouriteItem(String objectId) async {
    final db = await database;
    await db.delete(
      _tableFavouriteName,
      where: '$_columnObjectId = ?',
      whereArgs: [objectId],
    );
  }

  //History
  Future<List<HistoryModel>> listHistory() async {
    final db = await database;
    final results = await db.query(_tableHistoryName, orderBy: 'id DESC');
    return results.map((json) => HistoryModel.fromJson(json)).toList();
  }

  Future<HistoryModel?> getHistoryItem(String objectId) async {
    final db = await database;
    final results = await db.query(
      _tableHistoryName,
      where: '$_columnObjectId = ?',
      whereArgs: [objectId],
    );
    if (results.isNotEmpty) {
      return HistoryModel.fromJson(results.first);
    }
    return null;
  }

  Future<HistoryModel> insertHistoryItem(HistoryModel historyItem) async {
    final db = await database;
    final objectId = historyItem.objectId!;
    final exists = await getHistoryItem(objectId);
    if (exists?.objectId != null) {
      await deleteHistoryItem(historyItem.objectId!);
    }
    final id = await db.insert(_tableHistoryName, historyItem.toJson(), conflictAlgorithm: ConflictAlgorithm.replace);
    return historyItem.copyWith(id: id);
  }

  Future<void> deleteHistoryItem(String objectId) async {
    final db = await database;
    await db.delete(
      _tableHistoryName,
      where: '$_columnObjectId = ?',
      whereArgs: [objectId],
    );
  }

  Future<void> close() async {
    final db = await database;
    return db.close();
  }

  Future<Database> _initDatabase() async {
    final path = join(await getDatabasesPath(), _databaseName);
    final exists = await databaseExists(path);
    final File file = File(path);
    if (!exists) {
      log('Creating new copy from asset');
      try {
        await Directory(dirname(path)).create(recursive: true);
      } catch (_) {
        ByteData data = await rootBundle.load(join('assets', _databaseName));
        List<int> bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
        await file.writeAsBytes(bytes, flush: true);
        log('database successfully copied to $path');
      }
    } else {
      log('Opening existing database');
    }
    return openDatabase(
      join(await getDatabasesPath(), _databaseName),
      onCreate: (db, _) {
        db
          ..execute('''
          CREATE TABLE $_tableFavouriteName(
            $_columnId INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
            $_columnObjectId TEXT NOT NULL,
            $_columnTitle TEXT NOT NULL,
            $_columnImage TEXT
          )
        ''')
          ..execute('''
          CREATE TABLE $_tableHistoryName(
            $_columnId INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
            $_columnObjectId TEXT NOT NULL,
            $_columnTitle TEXT NOT NULL,
            $_columnImage TEXT
          )
        ''')
          ..execute('''
          CREATE TRIGGER keep_30_rows AFTER INSERT ON $_tableHistoryName
            WHEN (SELECT COUNT(*) FROM $_tableHistoryName) > 30
            BEGIN
                DELETE FROM $_tableHistoryName
                WHERE id = (SELECT MIN(id) FROM $_tableHistoryName);
            END;
        ''');
      },
      version: _databaseVersion,
    );
  }
}
