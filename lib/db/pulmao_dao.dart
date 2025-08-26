import 'package:flowerslung/db/db_helper.dart';
import 'package:flowerslung/domain/pulmao.dart';
import 'package:sqflite/sqflite.dart';
class PulmaoDao {
  Future<List<Pulmao>> listarPulmao() async {
    Database db = await DBHelper().initDB();
    String sql = 'SELECT * FROM explicacaoPartePulmao;';
    var result = await db.rawQuery(sql);
    List<Pulmao> listarPulmao = [];
    await Future.delayed(const Duration(seconds: 3));
    for (var json in result) {
      Pulmao pulmao = Pulmao.fromJson(json);
      listarPulmao.add(pulmao);
    }
    return listarPulmao;
  }
  Future<Pulmao?> buscarPorId(int id) async {
    Database db = await DBHelper().initDB();
    String sql = 'SELECT * FROM explicacaoPartePulmao WHERE id = ?;';
    var result = await db.rawQuery(sql, [id]);

    if (result.isNotEmpty) {
      return Pulmao.fromJson(result.first);
    }
    return null;
  }
}