import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseConnection {
  Future<Database> setDatabase() async {
    var directory = await getApplicationDocumentsDirectory();
    var path = join(directory.path, "mydb");

    var db = await openDatabase(path, version: 1, onCreate: _createDatabase);
    return db;
  }

  Future<void> _createDatabase(Database database, int version) async {
    String sql =
        "CREATE TABLE STUDENT (id integer primary key autoincrement, name text, context text,subject text,)";
    await database.execute(sql);
  }
}
