import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseConnection {
  setDatabase() async {
    var directory = await getApplicationCacheDirectory();
    var path = join(directory.path, 'db_todolist_sqflite');
    var database =
        await openDatabase(path, version: 1, onCreate: _onCreatingDatabase);
    return database;
  }

  _onCreatingDatabase(Database database, int version) async {
    await database.execute( "CREATE TABLE categories (id INTEGER PRIMARY KEY, name TEXT, description TEXT");
  }
}
