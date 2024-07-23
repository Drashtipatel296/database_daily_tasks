import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DbHelper{

  static DbHelper databaseHelper = DbHelper._();
  DbHelper._();

  Database? _database;

  Future<Database> get database async {
    return _database ?? await initDatabase();
  }

  Future<Database> initDatabase() async {
    String path = await getDatabasesPath();
    String dbPath = join(path, 'students.db');

    Database database = await openDatabase(dbPath, version: 1, onCreate: (db, version) {
      db.execute('CREATE TABLE Students (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, age INTEGER, course TEXT)');
    },);
    return database;
  }

  Future<void> insertData() async {
    Database db = await database;
    int id = await db.rawInsert('INSERT INTO Students (name, age, course) VALUES ("Drashti Patel", 20, "Master in Flutter Developer")');
  }
}