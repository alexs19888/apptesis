import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class conexionsqflite {
  setDatabase() async {
    // Obtener ubicacion usando metodo getDatabasesPath
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'pesista.db');
    // Eliminar la DB
    await deleteDatabase(path);
    //Abrir DB
    Database database = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
          // Cuando creas la DB, crear la tabla
          await db.execute(
              'CREATE TABLE pesistas (idpesista INTEGER PRIMARY KEY, nombre TEXT, apellido TEXT, edad INTEGER, sexo TEXT, peso_corporal INTEGER, division INTEGER, talla INTEGER, provincia TEXT, fecha_inicio_deporte TEXT, fecha_ingreso_equipo TEXT, arranque INTEGER, envion INTEGER, biatlon INTEGER)');
        });
  }



}
