import 'package:flowerslung/db/db_helper.dart';
import 'package:flowerslung/domain/sintomas.dart';
import 'package:sqflite/sqflite.dart';

class SintomasDao {
  Future<List<Sintomas>> listarSintomas() async {
    Database db = await DBHelper().initDB();
    String sql = 'SELECT * FROM informacoesSintomas;';
    var result = await db.rawQuery(sql);

    List<Sintomas> listaSintomas = [];

    await Future.delayed(Duration(seconds: 3));

    for (var json in result) {
      Sintomas sintomas = Sintomas.fromJson(json);
      listaSintomas.add(sintomas);
    }

    return listaSintomas;
  }
}
