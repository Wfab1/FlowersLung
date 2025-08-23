import 'package:flowerslung/db/db_helper.dart';
import 'package:flowerslung/domain/apoio.dart';
import 'package:sqflite/sqflite.dart';

class ApoioDao {
  Future<List<Apoio>> listarApoio() async {
    Database db = await DBHelper().initDB();
    String sql = 'SELECT * FROM informacoesApoio;';
    var result = await db.rawQuery(sql);

    List<Apoio> listaApoio = [];

    await Future.delayed(Duration(seconds: 3));

    for (var json in result) {
      Apoio apoio = Apoio.fromJson(json);
      listaApoio.add(apoio);
    }

    return listaApoio;
  }
}
