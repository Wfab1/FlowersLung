import 'package:flowerslung/db/db_helper.dart';
import 'package:flowerslung/domain/tratamento.dart';
import 'package:sqflite/sqflite.dart';

class TratamentoDao {
  Future<List<Tratamento>> listarTratamento() async {
    Database db = await DBHelper().initDB();
    String sql = 'SELECT * FROM informacoesTratamento;';
    var result = await db.rawQuery(sql);

    List<Tratamento> listaTratamento = [];

    await Future.delayed(Duration(seconds: 3));

    // ForEach
    for (var json in result) {
      Tratamento tratamento = Tratamento.fromJson(json);
      listaTratamento.add(tratamento);
    }
    return listaTratamento;
  }
}