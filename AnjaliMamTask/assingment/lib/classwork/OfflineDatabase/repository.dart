import 'package:assingment/classwork/OfflineDatabase/connection.dart';
import 'package:sqflite/sqflite.dart';

class Repository {
  //obj of class
  late DatabaseConnection databaseConnection;

  //constructor of class
  Repository() {
    databaseConnection = DatabaseConnection();
  }

  static Database? database;

  Future<Database?> get mydatabase async {
    if (database != null) {
      return database;
    } else {
      database = await databaseConnection.setDatabase();
      return database;
    }
  }

  insertData() async {
    var con = await mydatabase;
    return await con?.insert(table,values)
  }
}
