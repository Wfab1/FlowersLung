import 'package:sqflite/sqflite.dart';

import '../domain/pergunta.dart';
import 'db_helper.dart';

class PerguntaDao {

  Future<List<Pergunta>> listarPerguntas() async {
    Database db = await DBHelper().initDB();
    String sql = 'SELECT * FROM PERGUNTAS;';
    var result = await db.rawQuery(sql);

    List<Pergunta> listaPerguntas = [];
    await Future.delayed(Duration(seconds: 3));

    for (var json in result) {
      Pergunta perguntas = Pergunta.fromJson(json);
      listaPerguntas.add(perguntas);
    }

    return listaPerguntas;
  }
}
