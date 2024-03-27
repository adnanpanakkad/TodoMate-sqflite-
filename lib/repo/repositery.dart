import 'package:sqflite/sqflite.dart';
import 'package:to_do/repo/database_connection.dart';

class Repository {
  DatabaseConnection? _databaseConnection;
  Repository() {
    _databaseConnection = DatabaseConnection();
  }

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _databaseConnection?.setDatabase();
    return _database!;
  }

  //inserting data into table
  insertData(table, data) async {
    var connection = await database;
    return await connection.insert(table, data);
  }
}
