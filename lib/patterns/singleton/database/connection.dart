import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Connection {
  static const VERSION = 1;
  static const DATABASE_NAME = 'singleton_flutter_teste';

  Database? _db;
  static Connection? _instance;

  Connection._();

  static Connection get instance {
    _instance ??= Connection._();
    return _instance!;
  }

  Future<Database> get db => _openDatabaseConnection();

  Future<Database> _openDatabaseConnection() async {
    var databasePath = await getDatabasesPath();
    var path = join(databasePath, DATABASE_NAME);
    if (_db == null) {
      _db = await openDatabase(
        path,
        version: VERSION,
        onCreate: _onCreate,
        onUpgrade: _onUpgrade,
      );
    }
    return _db!;
  }

  Future<void> _onCreate(Database db, int version) async {
    db.execute('create table teste(nome varchar(200))');
    db.execute('insert into teste values("Derek")');
    db.execute('insert into teste values("Derek 2")');
    db.execute('insert into teste values("Derek 3")');
  }

  Future<void> _onUpgrade(Database db, int oldVersion, int newVersion) async {}

  Future<void> closeConnection() async {
    await _db!.close();
    _db = null;
  }
}
