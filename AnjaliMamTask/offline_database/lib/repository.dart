import 'package:flutter/material.dart';
import 'package:offline_database/connection.dart';
import 'package:sqflite/sqflite.dart';

class Repository {
  late DatabaseConnection _databaseConnection;

  Repository() //constructor
  {
    _databaseConnection = DatabaseConnection();
  }
  static Database? _database;
  Future<Database?> get mydatabase async {
    if (_database != null) {
      return _database;
    } else {
      _database = await _databaseConnection.setDatabase();
      return _database;
    }
  }

  //fetch all data from the database
  readData(table) async {
    var con = await mydatabase;
    return await con?.query(table);
  }

  //fetch single data from the database using the specified ID
  readDataByID(table, itemID) async {
    var con = await mydatabase;
    return await con?.query(table, where: "id=?", whereArgs: [itemID]);
  }

  //to store data
  insertData(table, data) async {
    var con = await mydatabase;
    return await con?.insert(table, data);
  }

  //update data
  updateData(table, data) async {
    var con = await mydatabase;
    return await con
        ?.update(table, data, where: "id=?", whereArgs: [data['id']]);
  }

  //delete data by id
  deleteDataByID(table, itemID) async {
    var con = await mydatabase;
    return await con?.rawDelete("delete from $table where id = $itemID");
  }
}
