import 'package:lvp/BD/conexionsqflite.dart';
import 'package:sqflite/sqflite.dart';

class repository{
  conexionsqflite _databaseConnection = new conexionsqflite();

  repository(){
   _databaseConnection = conexionsqflite();
  }

  static Database _database;

  Future<Database> get database async{

  }
}