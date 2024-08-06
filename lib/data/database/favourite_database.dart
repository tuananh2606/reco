import 'dart:developer';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:reco/data/models/favourite/favourite_model.dart';
import 'package:sqflite/sqflite.dart';

class FavouriteDatabase {
  FavouriteDatabase._init();
  static final FavouriteDatabase instance = FavouriteDatabase._init();
  static const _databaseName = 'favourite_database.db';
  static const _tableName = 'favourite';
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

  Future<List<FavouriteModel>> listFavourite() async {
    final db = await database;
    final results = await db.query(_tableName);
    return results.map((json) => FavouriteModel.fromJson(json)).toList();
  }

  Future<FavouriteModel> insertFavouriteItem(FavouriteModel favouriteItem) async {
    final db = await database;
    final id = await db.insert(_tableName, favouriteItem.toJson());
    // await db.transaction((txn) async {
    //   final id = await txn.insert(
    //     _tableName,
    //     todo,
    //     conflictAlgorithm: ConflictAlgorithm.replace,
    //   );
    //   final results = await txn.query(_tableName, where: '$_columnId = ?', whereArgs: [id]);
    //   todoEntity = results.first;
    // });
    return favouriteItem.copyWith(id: id);
  }

  Future<void> deleteFavouriteItem(String objectId) async {
    final db = await database;
    await db.delete(
      _tableName,
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
    if (exists) {
      log('Create new database from assets');
      try {
        await Directory(dirname(path)).create(recursive: true);
      } catch (_) {
        ByteData data = await rootBundle.load(join("assets/databases", _databaseName));
        List<int> bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
        await File(path).writeAsBytes(bytes, flush: true);
      }
    } else {
      log('Opening existing database');
    }
    return openDatabase(
      join(await getDatabasesPath(), _databaseName),
      onCreate: (db, _) {
        db.execute('''
          CREATE TABLE $_tableName(
            $_columnId INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
            $_columnObjectId TEXT NOT NULL,
            $_columnTitle TEXT NOT NULL,
            $_columnImage TEXT
          )
        ''');
      },
      version: _databaseVersion,
    );
  }
}
