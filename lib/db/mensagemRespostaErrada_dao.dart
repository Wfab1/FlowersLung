import 'package:flowerslung/db/db_helper.dart';
import 'package:flowerslung/domain/mensagemRespostaErrada.dart';
import 'package:sqflite/sqflite.dart';

class MensagemrespostaerradaDao {
  Future<List<Mensagemrespostaerrada>> listarMensagemrespostaerrada() async {
    Database db = await DBHelper().initDB();
    String sql = 'SELECT * FROM mensagemRespostaErrada;';
    var result = await db.rawQuery(sql);

    List<Mensagemrespostaerrada> listaMensagemrespostaerrada = [];

    await Future.delayed(Duration(seconds: 3));

    // ForEach
    for (var json in result) {
      Mensagemrespostaerrada mensagemrespostaerrada = Mensagemrespostaerrada.fromJson(json);
      listaMensagemrespostaerrada.add(mensagemrespostaerrada);
    }

    return listaMensagemrespostaerrada;
  }
}