import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  Future<Database> initDB() async {
    String path = await getDatabasesPath();
    String dbName = 'flower.db';

    String dbPath = join(path, dbName);
    Database database = await openDatabase(
      dbPath,
      version: 1,
      onCreate: onCreate,
    );

    print(dbPath);
    return database;
  }

  Future<void> onCreate(Database db, int version) async {
    String sql = '''CREATE TABLE Comunidade (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      titulo TEXT,
      nomePostador TEXT,
      dataPost TEXT,
      mensagem TEXT,
      nomeComentador TEXT,
      dataComentario TEXT,
      comentario TEXT
    );''';

    await db.execute(sql);

    sql =
    "INSERT INTO Comunidade (titulo, nomePostador, dataPost, mensagem, nomeComentador, dataComentario, comentario) VALUES ('Luta contra o cigarro', 'Anny Beatriz', '01/01/2025', 'Desenvolvi câncer de pulmão por fumar desde os 11 anos e estou tentando me livrar desse vício.', 'Wanessa Fernanda', '02/01/2025', 'Oi, Anny! Estou passando pela mesma situação que você. Estão sendo dias difíceis.');";
    await db.execute(sql);

    sql =
    "INSERT INTO Comunidade (titulo, nomePostador, dataPost, mensagem, nomeComentador, dataComentario, comentario) VALUES ('Cada dia é um desafio', 'Francyele Dias', '05/01/2025', 'Cada dia é um desafio, mas estou buscando apoio na comunidade para continuar firme.', 'Maria Vitória', '06/01/2025', 'Continue firme, Francyele! Você está inspirando outras pessoas com sua coragem.');";
    await db.execute(sql);

    sql =
    "INSERT INTO Comunidade (titulo, nomePostador, dataPost, mensagem, nomeComentador, dataComentario, comentario) VALUES ('Recaídas acontecem', 'Maria Silva', '10/01/2025', 'Infelizmente tive uma recaída essa semana. Mas estou determinada a continuar tentando.', 'José Santos', '11/01/2025', 'Não desista, Maria! O importante é continuar tentando.');";
    await db.execute(sql);
  }
}