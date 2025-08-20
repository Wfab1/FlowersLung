import 'package:flowerslung/db/db_helper.dart';
import 'package:flowerslung/domain/comunidade.dart';
import 'package:sqflite/sqflite.dart';

class ComunidadeDao {
  Future<List<Comunidade>> listarComunidade() async {
    Database db = await DBHelper().initDB();
    String sql = 'SELECT * FROM COMUNIDADE;';
    var result = await db.rawQuery(sql);

    List<Comunidade> listaComunidade = [];

    await Future.delayed(Duration(seconds: 3));

    // ForEach
    for (var json in result) {
      Comunidade comunidade = Comunidade.fromJson(json);
      listaComunidade.add(comunidade);
    }

    return listaComunidade;
  }
}