import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseConnection {
  Future<Database> setDatabase() async {
    var directory = await getApplicationDocumentsDirectory();
    var path = join(directory.path, "mydb_sqlite");

    var database =
        await openDatabase(path, version: 1, onCreate: _createDatabase);

    return database;
  }
}

Future<void> _createDatabase(Database database, int version) async {
  String sql =
      "CREATE TABLE STUDENT(id integer primary key auto_increment, name text,contact text)";

  await database.execute(sql);
}
