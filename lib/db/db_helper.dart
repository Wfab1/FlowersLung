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
      texto TEXT
    )''';
    await db.execute(sql);

    sql = '''CREATE TABLE informacoesApoio(
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      texto TEXT
    )''';
    await db.execute(sql);

    sql = '''CREATE TABLE informacoesTratamento(
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      texto TEXT
    )''';
    await db.execute(sql);

    sql =
    "INSERT INTO Comunidade (titulo, nomePostador, dataPost, mensagem, nomeComentador, dataComentario, comentario) VALUES ('Luta contra o cigarro', 'Anny Beatriz', '01/08/2025', 'Desenvolvi câncer de pulmão por fumar desde os 11 anos e estou tentando me livrar desse vício.', 'Wanessa Fernanda', '02/01/2025', 'Oi, Anny! Estou passando pela mesma situação que você. Estão sendo dias difíceis.');";
    await db.execute(sql);

    sql =
    "INSERT INTO Comunidade (titulo, nomePostador, dataPost, mensagem, nomeComentador, dataComentario, comentario) VALUES ('Cada dia é um desafio', 'Francyele Dias', '05/08/2025', 'Cada dia é um desafio, mas estou buscando apoio na comunidade para continuar firme.', 'Maria Vitória', '06/01/2025', 'Continue firme, Francyele! Você está inspirando outras pessoas com sua coragem.');";
    await db.execute(sql);

    sql =

    "INSERT INTO Comunidade (titulo, nomePostador, dataPost, mensagem, nomeComentador, dataComentario, comentario) VALUES ('Recaídas acontecem', 'Maria Silva', '10/01/2025', 'Infelizmente tive uma recaída essa semana. Mas estou determinada a continuar tentando.', 'José Santos', '11/01/2025', 'Não desista, Maria! O importante é continuar tentando.');";
    await db.execute(sql);

    sql =
    "INSERT INTO informacoesSintomas (texto) VALUES ('O câncer de pulmão pode se manifestar de maneiras silenciosas no início, mas alguns sintomas podem indicar que algo não está bem. Identificar essas alterações de forma precoce faz toda a diferença no diagnóstico e no tratamento. Os sinais mais comuns são:');";
    await db.execute(sql);

    sql =
    "INSERT INTO informacoesSintomas (texto) VALUES ('• Dores locais: costela ou peito;');";
    await db.execute(sql);

    sql =
    "INSERT INTO informacoesSintomas (texto) VALUES ('• Tipos de dor: aguda ou incômoda;');";
    await db.execute(sql);

    sql =
    "INSERT INTO informacoesSintomas (texto) VALUES ('• Dores circunstanciais: ao respirar;');";
    await db.execute(sql);

    sql =
    "INSERT INTO informacoesSintomas (texto) VALUES ('• Tosse: com catarro, seca, com sangue, forte ou crônica;');";
    await db.execute(sql);

    sql =
    "INSERT INTO informacoesSintomas (texto) VALUES ('• No sistema respiratório: falta de ar, infecções respiratórias frequentes ou respiração sibilante;');";
    await db.execute(sql);

    sql =
    "INSERT INTO informacoesSintomas (texto) VALUES ('• No corpo: fadiga ou perda de apetite;');";
    await db.execute(sql);

    sql =
    "INSERT INTO informacoesSintomas (texto) VALUES ('• Também é comum: fraqueza, inchaço dos gânglios, perda de peso e pressão no peito.');";
    await db.execute(sql);

    sql =
    "INSERT INTO informacoesApoio (texto) VALUES ('Receber o diagnóstico de câncer de pulmão é um momento difícil, que pode afetar várias áreas da vida: a saúde, as emoções, o convívio social e a situação financeira.');";
    await db.execute(sql);

    sql =
    "INSERT INTO informacoesApoio (texto) VALUES ('Por isso, é  importante oferecer apoio verdadeiro e constante, por meio de gestos simples. Alguns exemplos são:');";
    await db.execute(sql);

    sql =
    "INSERT INTO informacoesApoio (texto) VALUES ('• Apoio emocional faz diferença. Muitas vezes, a pessoa precisa apenas de alguém que a ouça, esteja ao seu lado e a incentive a não perder a esperança;');";
    await db.execute(sql);

    sql =
    "INSERT INTO informacoesApoio (texto) VALUES ('• Grupos de apoio e conversas com profissionais também ajudam a lidar com os medos e incertezas;');";
    await db.execute(sql);

    sql =
    "INSERT INTO informacoesApoio (texto) VALUES ('• Apoie no dia a dia. Além do tratamento, existem desafios práticos. É possível ajudar buscando informações sobre programas gratuitos que oferecem medicamentos, transporte, fraldas, suplementos ou até atendimento psicológico, como faz o Grupo de Apoio a Pessoas com Câncer (GAPC).');";
    await db.execute(sql);

    sql =
    "INSERT INTO informacoesTratamento (texto) VALUES ('O tratamento do câncer de pulmão varia conforme o tipo e o estágio da doença. No tipo de pequenas células, a doença limitada é tratada com quimioterapia, radioterapia torácica e radioterapia no crânio para prevenir metástases. Já a doença extensa foca no controle e qualidade de vida, com quimioterapia e imunoterapia, evitando a radioterapia profilática no crânio.');";
    await db.execute(sql);

    sql =
    "INSERT INTO informacoesTratamento (texto) VALUES ('No tipo de não pequenas células, os estágios I e II são tratados com cirurgia, quimioterapia e, às vezes, terapia-alvo ou imunoterapia. O estágio III exige uma abordagem combinada, podendo envolver cirurgia, quimio, rádio e imunoterapia. No estágio IV, o objetivo é controlar a doença com quimioterapia, imunoterapia ou terapia-alvo, conforme as mutações do tumor.');";
    await db.execute(sql);

    sql = '''CREATE TABLE Perguntas (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      pergunta TEXT,
      alternativa1 TEXT,
      alternativa2 TEXT,
      alternativa3 TEXT,
      alternativa4 TEXT,
      alternativaCorreta TEXT
    )''';
    await db.execute(sql);

    sql = "INSERT INTO PERGUNTAS (pergunta, alternativa1, alternativa2, alternativa3, alternativa4, alternativaCorreta) VALUES ('Qual é o principal fator de risco para o desenvolvimento do câncer de pulmão?', 'Consumo excessivo de álcool', 'Dieta pobre em fibras','Tabagismo','Sedentarismo', 'A')";
    await db.execute(sql);

    sql = "INSERT INTO PERGUNTAS (pergunta, alternativa1, alternativa2, alternativa3, alternativa4, alternativaCorreta) VALUES ('Pergunta2', 'Consumo excessivo de álcool', 'Dieta pobre em fibras','Tabagismo','Sedentarismo', 'B')";
    await db.execute(sql);


  }
}
