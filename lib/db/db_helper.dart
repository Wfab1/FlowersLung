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
   )''';
    await db.execute(sql);


    sql = '''CREATE TABLE informacoesSintomas(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  titulo TEXT,
  subtitulo TEXT,
  texto TEXT
)''';
    await db.execute(sql);

    sql = '''CREATE TABLE informacoesApoio(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  titulo TEXT,
  subtitulo TEXT,
  texto TEXT
)''';
    await db.execute(sql);

    sql = '''CREATE TABLE informacoesTratamento(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  titulo TEXT,
  subtitulo TEXT,
  texto TEXT
)''';
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


    sql = "INSERT INTO informacoesSintomas (titulo, subtitulo, texto) VALUES ('Introdução', 'Sintomas iniciais', 'O câncer de pulmão pode se manifestar de maneiras silenciosas no início, mas alguns sintomas podem indicar que algo não está bem. Identificar essas alterações de forma precoce faz toda a diferença no diagnóstico e no tratamento.');";
    await db.execute(sql);

    sql = "INSERT INTO informacoesSintomas (titulo, subtitulo, texto) VALUES ('Sintoma 1', 'Dores', 'Dor aguda ou incômoda.');";
    await db.execute(sql);

    sql = "INSERT INTO informacoesSintomas (titulo, subtitulo, texto) VALUES ('Sintoma 2', 'Tosse persistente', 'Tosse: com catarro, seca, com sangue, forte ou crônica.');";
    await db.execute(sql);

    sql = "INSERT INTO informacoesApoio (titulo, subtitulo, texto) VALUES ('Introdução', 'Problemas iniciais', 'Receber o diagnóstico de câncer de pulmão é um momento difícil, que pode afetar várias áreas da vida: a saúde, as emoções, o convívio social e a situação financeira. Por isso, é  importante oferecer apoio verdadeiro e constante, por meio de gestos simples.');";
    await db.execute(sql);

    sql = "INSERT INTO informacoesApoio(titulo, subtitulo, texto) VALUES ('Apoio 1', 'Apoio emocional', 'Muitas vezes, a pessoa precisa apenas de alguém que a ouça, esteja ao seu lado e a incentive a não perder a esperança.');";
    await db.execute(sql);

    sql = "INSERT INTO informacoesApoio (titulo, subtitulo, texto) VALUES ('Apoio 2', 'Grupos de apoio', 'Conversas com profissionais e pessoas que enfrentam situções semelhantes também ajudam a lidar com os medos e as incertezas.');";
    await db.execute(sql);

    sql = "INSERT INTO informacoesApoio (titulo, subtitulo, texto) VALUES ('Apoio 3', 'Apoio diário', 'Além do tratamento, existem desafios práticos. É possível ajudar buscando informações sobre programas gratuitos que oferecem medicamentos, transporte, fraldas, suplementos ou até atendimento psicológico, como faz o Grupo de Apoio a Pessoas com Câncer (GAPC).');";
    await db.execute(sql);

    sql = "INSERT INTO informacoesTratamento (titulo, subtitulo, texto) VALUES ('Introdução', 'Tipos', 'O tratamento do câncer de pulmão varia conforme o tipo e o estágio da doença, podendo ser do tipo pequenas células ou não pequenas células.');";
    await db.execute(sql);

    sql = "INSERT INTO informacoesTratamento (titulo, subtitulo, texto) VALUES ('Pequenas células', 'Limitada', 'No tipo de pequenas células, a doença limitada é tratada com quimioterapia, radioterapia torácica e radioterapia no crânio para prevenir metástases.');";
    await db.execute(sql);

    sql = "INSERT INTO informacoesTratamento (titulo, subtitulo, texto) VALUES ('Pequenas células', 'Extensa', 'Já a doença extensa foca no controle e qualidade de vida, com quimioterapia e imunoterapia, evitando a radioterapia profilática no crânio.');";
    await db.execute(sql);

    sql = "INSERT INTO informacoesTratamento (titulo, subtitulo, texto) VALUES ('Não pequenas células', 'Estágio I e II', 'No tipo de não pequenas células, os estágios I e II são tratados com cirurgia, quimioterapia e, às vezes, terapia-alvo ou imunoterapia.');";
    await db.execute(sql);

    sql = "INSERT INTO informacoesTratamento (titulo, subtitulo, texto) VALUES ('Não pequenas células', 'Estágio III', 'O estágio III exige uma abordagem combinada, podendo envolver cirurgia, quimio, rádio e imunoterapia.');";
    await db.execute(sql);

    sql = "INSERT INTO informacoesTratamento (titulo, subtitulo, texto) VALUES ('Não pequenas células', 'Estágio Iv', 'No estágio IV, o objetivo é controlar a doença com quimioterapia, imunoterapia ou terapia-alvo, conforme as mutações do tumor.');";
    await db.execute(sql);
  }
}
