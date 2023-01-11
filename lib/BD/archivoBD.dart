
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

Future<void> createTable(Database db) async {
  // Crea la tabla 'pesistas' con las siguientes columnas
  await db.execute('''
        CREATE TABLE pesistas (
            id INTEGER PRIMARY KEY,
            nombre TEXT NOT NULL,
            apellido TEXT NOT NULL,
            ci INTEGER NOT NULL,
            edad INTEGER NOT NULL,
            sexo TEXT NOT NULL,
            peso_corporal INTEGER NOT NULL,
            division TEXT NOT NULL,
            talla INTEGER NOT NULL,
            provincia TEXT NOT NULL,
            fecha_inicio_deporte TEXT NOT NULL,
            fecha_ingreso_equipo TEXT NOT NULL,
            arranque INTEGER NOT NULL,
            envion INTEGER NOT NULL,
            biatlon INTEGER NOT NULL
        )
    ''');
}

Future<void> createDB() async {
  // Abre una conexión a la base de datos
  final db = await openDatabase(join(await getDatabasesPath(), 'pesistasdatabase.db'),
       onCreate: (db, version) {
      return createTable(db);
    },
    // La versión actual de la base de datos
    version: 1,
  );

}

Future<void> insertPesista(Database db, Map<String, dynamic> data) async {
  // Inserta un registro en la tabla 'pesistas' con los datos recibidos
  await db.insert(
    'pesistas',
    data,
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}
/*La función insertPesista() recibe un objeto Database y un diccionario Map
que contiene los datos del pesista que se desea insertar. Utiliza el método insert()
para insertar un registro en la tabla pesistas con los datos recibidos. Puede utilizar
el argumento conflictAlgorithm para especificar cómo manejar situaciones en las que
se intenta insertar un registro con un valor de clave primaria que ya existe en la tabla.
En este caso se esta utilizando ConflictAlgorithm.replace, que actualiza el valor si existe.

Para utilizar esta función, primero debería abrir una conexión a la base de datos y
llamar a la función insertPesista() pasando el objeto Database y un diccionario con
los datos del pesista que se desea insertar como parámetros:
 */

Future<void> insertRecord(Map<String, dynamic> data) async {
  // Abre una conexión a la base de datos
  final db = await openDatabase(
    // Utiliza el método `join` para unir el directorio de la
    // aplicación con el nombre del archivo de la base de datos
    join(await getDatabasesPath(), 'pesistas_database.db'),
  );
  await insertPesista(db, data);
  await db.close();
}
Future<void> insertData(
    Database db,
    String nombre,
    String apellido,
    int ci,
    int edad,
    String sexo,
    int pesoCorporal,
    int division,
    int talla,
    String provincia,
    String fechaInicioDeporte,
    String fechaIngresoEquipo,
    int arranque,
    int envion,
    int biatlon) async {
  // Inserta una fila en la tabla 'pesistas'
  await db.execute('''
        INSERT INTO pesistas (nombre, apellido, ci, edad, sexo, peso_corporal, division, talla, provincia, fecha_inicio_deporte, fecha_ingreso_equipo, arranque, envion, biatlon) 
        VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
    ''', [
    nombre,
    apellido,
    ci,
    edad,
    sexo,
    pesoCorporal,
    division,
    talla,
    provincia,
    fechaInicioDeporte,
    fechaIngresoEquipo,
    arranque,
    envion,
    biatlon
  ]);
}
/*Para insertar los datos podrias crear un Map con todas las variables, por ejemplo:*/



/*Y para insertar el registro en la base de datos podrías llamar a la
función insertRecord() pasando el mapa data como parámetro:*/
// lo puse en el formulario y sin error

//***********************************************************************
Future<void> updatePesista(Database db, Map<String, dynamic> data, int id) async {
  // Actualiza un registro en la tabla 'pesistas' con los datos recibidos
  await db.update(
    'pesistas',
    data,
    where: 'id = ?',
    whereArgs: [id],
  );
}
//updatePesista(db, data, id); método para actualizar