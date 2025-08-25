
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
    "INSERT INTO Comunidade (titulo, nomePostador, dataPost, mensagem, nomeComentador, dataComentario, comentario) VALUES ('Luta contra o cigarro', 'Anny Beatriz', '01/08/2025', 'Desenvolvi câncer de pulmão por fumar desde os 11 anos e estou tentando me livrar desse vício.', 'Wanessa Fernanda', '02/01/2025', 'Oi, Anny! Estou passando pela mesma situação que você. Estão sendo dias difíceis.');";
    await db.execute(sql);

    sql =
    "INSERT INTO Comunidade (titulo, nomePostador, dataPost, mensagem, nomeComentador, dataComentario, comentario) VALUES ('Cada dia é um desafio', 'Francyele Dias', '05/08/2025', 'Cada dia é um desafio, mas estou buscando apoio na comunidade para continuar firme.', 'Maria Vitória', '06/01/2025', 'Continue firme, Francyele! Você está inspirando outras pessoas com sua coragem.');";
    await db.execute(sql);

    sql =
    "INSERT INTO Comunidade (titulo, nomePostador, dataPost, mensagem, nomeComentador, dataComentario, comentario) VALUES ('Recaídas acontecem', 'Maria Silva', '10/081/2025', 'Infelizmente tive uma recaída essa semana. Mas estou determinada a continuar tentando.', 'José Santos', '11/01/2025', 'Não desista, Maria! O importante é continuar tentando.');";
    await db.execute(sql);

    sql =
    "INSERT INTO informacoesSintomas (titulo, subtitulo, texto) VALUES ('Introdução', 'Sintomas iniciais', 'O câncer de pulmão pode se manifestar de maneiras silenciosas no início, mas alguns sintomas podem indicar que algo não está bem. Identificar essas alterações de forma precoce faz toda a diferença no diagnóstico e no tratamento.');";
    await db.execute(sql);

    sql =
    "INSERT INTO informacoesSintomas (titulo, subtitulo, texto) VALUES ('Sintoma 1', 'Dores', 'Dor aguda ou incômoda.');";
    await db.execute(sql);

    sql =
    "INSERT INTO informacoesSintomas (titulo, subtitulo, texto) VALUES ('Sintoma 2', 'Tosse persistente', 'Tosse: com catarro, seca, com sangue, forte ou crônica.');";
    await db.execute(sql);

    sql =
    "INSERT INTO informacoesApoio (titulo, subtitulo, texto) VALUES ('Introdução', 'Problemas iniciais', 'Receber o diagnóstico de câncer de pulmão é um momento difícil, que pode afetar várias áreas da vida: a saúde, as emoções, o convívio social e a situação financeira. Por isso, é  importante oferecer apoio verdadeiro e constante, por meio de gestos simples.');";
    await db.execute(sql);

    sql =
    "INSERT INTO informacoesApoio(titulo, subtitulo, texto) VALUES ('Apoio 1', 'Apoio emocional', 'Muitas vezes, a pessoa precisa apenas de alguém que a ouça, esteja ao seu lado e a incentive a não perder a esperança.');";
    await db.execute(sql);

    sql =
    "INSERT INTO informacoesApoio (titulo, subtitulo, texto) VALUES ('Apoio 2', 'Grupos de apoio', 'Conversas com profissionais e pessoas que enfrentam situções semelhantes também ajudam a lidar com os medos e as incertezas.');";
    await db.execute(sql);

    sql =
    "INSERT INTO informacoesApoio (titulo, subtitulo, texto) VALUES ('Apoio 3', 'Apoio diário', 'Além do tratamento, existem desafios práticos. É possível ajudar buscando informações sobre programas gratuitos que oferecem medicamentos, transporte, fraldas, suplementos ou até atendimento psicológico, como faz o Grupo de Apoio a Pessoas com Câncer (GAPC).');";
    await db.execute(sql);

    sql =
    "INSERT INTO informacoesTratamento (titulo, subtitulo, texto) VALUES ('Introdução', 'Tipos', 'O tratamento do câncer de pulmão varia conforme o tipo e o estágio da doença, podendo ser do tipo pequenas células ou não pequenas células.');";
    await db.execute(sql);

    sql =
    "INSERT INTO informacoesTratamento (titulo, subtitulo, texto) VALUES ('Pequenas células', 'Limitada', 'No tipo de pequenas células, a doença limitada é tratada com quimioterapia, radioterapia torácica e radioterapia no crânio para prevenir metástases.');";
    await db.execute(sql);

    sql =
    "INSERT INTO informacoesTratamento (titulo, subtitulo, texto) VALUES ('Pequenas células', 'Extensa', 'Já a doença extensa foca no controle e qualidade de vida, com quimioterapia e imunoterapia, evitando a radioterapia profilática no crânio.');";
    await db.execute(sql);

    sql =
    "INSERT INTO informacoesTratamento (titulo, subtitulo, texto) VALUES ('Não pequenas células', 'Estágio I e II', 'No tipo de não pequenas células, os estágios I e II são tratados com cirurgia, quimioterapia e, às vezes, terapia-alvo ou imunoterapia.');";
    await db.execute(sql);

    sql =
    "INSERT INTO informacoesTratamento (titulo, subtitulo, texto) VALUES ('Não pequenas células', 'Estágio III', 'O estágio III exige uma abordagem combinada, podendo envolver cirurgia, quimio, rádio e imunoterapia.');";
    await db.execute(sql);

    sql =
    "INSERT INTO informacoesTratamento (titulo, subtitulo, texto) VALUES ('Não pequenas células', 'Estágio Iv', 'No estágio IV, o objetivo é controlar a doença com quimioterapia, imunoterapia ou terapia-alvo, conforme as mutações do tumor.');";
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

    sql =
    "INSERT INTO PERGUNTAS (pergunta, alternativa1, alternativa2, alternativa3, alternativa4, alternativaCorreta) VALUES ('Qual é o principal fator de risco para o desenvolvimento do câncer de pulmão?', 'Consumo excessivo de álcool', 'Dieta pobre em fibras','Tabagismo','Sedentarismo', 'C')";
    await db.execute(sql);

    sql =
    "INSERT INTO PERGUNTAS (pergunta, alternativa1, alternativa2, alternativa3, alternativa4, alternativaCorreta) VALUES ('Qual é um fator de risco ocupacional para o desenvolvimento do câncer de pulmão?', 'Uso prolongado de computador', 'Exposição ao amianto (asbesto)', 'Trabalhar em locais com ar-condicionado', 'Permanecer muito tempo em pé', 'B')";
    await db.execute(sql);

    sql =
    "INSERT INTO PERGUNTAS (pergunta, alternativa1, alternativa2, alternativa3, alternativa4, alternativaCorreta) VALUES ('Qual é um sintoma comum do câncer de pulmão?', 'Dor abdominal frequente', 'Tosse persistente', 'Coceira na pele', 'Visão embaçada', 'B')";
    await db.execute(sql);

    sql =
    "INSERT INTO PERGUNTAS (pergunta, alternativa1, alternativa2, alternativa3, alternativa4, alternativaCorreta) VALUES ('Além do cigarro comum, qual outro produto também está ligado ao aumento do risco de câncer de pulmão?', 'Bebidas energéticas', 'Sal em excesso', 'Cigarro eletrônico', 'Café', 'C')";
    await db.execute(sql);

    sql =
    "INSERT INTO PERGUNTAS (pergunta, alternativa1, alternativa2, alternativa3, alternativa4, alternativaCorreta) VALUES ('O câncer de pulmão pode ser diagnosticado precocemente através de:', 'Exame de urina', 'Tomografia de baixa dose', 'Teste de glicemia', 'Exame de colesterol', 'B')";
    await db.execute(sql);

    sql =
    "INSERT INTO PERGUNTAS (pergunta, alternativa1, alternativa2, alternativa3, alternativa4, alternativaCorreta) VALUES ('Qual das opções abaixo é um tipo de tratamento para o câncer de pulmão?', 'Quimioterapia', 'Massagem terapêutica', 'Terapia com florais', 'Acupuntura', 'A')";
    await db.execute(sql);

    sql =
    "INSERT INTO PERGUNTAS (pergunta, alternativa1, alternativa2, alternativa3, alternativa4, alternativaCorreta) VALUES ('Um sintoma avançado do câncer de pulmão pode incluir:', 'Febre alta e súbita', 'Dor no peito ao respirar profundamente', 'Dor nos pés', 'Fome constante', 'B')";
    await db.execute(sql);

    sql =
    "INSERT INTO PERGUNTAS (pergunta, alternativa1, alternativa2, alternativa3, alternativa4, alternativaCorreta) VALUES ('O que pode ajudar na prevenção do câncer de pulmão?', 'Parar de fumar', 'Tomar antibióticos regularmente', 'Dormir mais de 10 horas por dia', 'Evitar alimentos com glúten', 'A')";
    await db.execute(sql);

    sql =
    "INSERT INTO PERGUNTAS (pergunta, alternativa1, alternativa2, alternativa3, alternativa4, alternativaCorreta) VALUES ('Em casos graves, o câncer de pulmão pode se espalhar para:', 'Orelhas', 'Fígado e cérebro', 'Unhas', 'Estômago apenas', 'B')";
    await db.execute(sql);

    sql =
    "INSERT INTO PERGUNTAS (pergunta, alternativa1, alternativa2, alternativa3, alternativa4, alternativaCorreta) VALUES ('O câncer de pulmão é mais comum em:', 'Crianças', 'Mulheres jovens', 'Adultos fumantes com mais de 50 anos', 'Atletas profissionais', 'C')";
    await db.execute(sql);

    sql =
    "INSERT INTO PERGUNTAS (pergunta, alternativa1, alternativa2, alternativa3, alternativa4, alternativaCorreta) VALUES ('Qual profissional da saúde é responsável pelo tratamento do câncer de pulmão?', 'Cardiologista', 'Gastroenterologista', 'Oncologista', 'Dermatologista', 'C')";
    await db.execute(sql);

    sql =
    "INSERT INTO PERGUNTAS (pergunta, alternativa1, alternativa2, alternativa3, alternativa4, alternativaCorreta) VALUES ('Qual o papel do apoio psicológico no tratamento do câncer de pulmão?', 'Não tem importância', 'Serve apenas para o médico', 'Ajuda o paciente a lidar emocionalmente com a doença', 'Substitui a medicação', 'C')";
    await db.execute(sql);

    sql =
    "INSERT INTO PERGUNTAS (pergunta, alternativa1, alternativa2, alternativa3, alternativa4, alternativaCorreta) VALUES ('O câncer de pulmão pode ser hereditário?', 'Nunca', 'Sempre', 'Em alguns casos, sim', 'Só se for câncer de mama', 'C')";
    await db.execute(sql);
    sql =
    "INSERT INTO PERGUNTAS (pergunta, alternativa1, alternativa2, alternativa3, alternativa4, alternativaCorreta) VALUES ('Qual exame é usado para confirmar a presença de um tumor no pulmão?', 'Endoscopia', 'Biópsia pulmonar', 'Raio-X da perna', 'Eletrocardiograma', 'B')";
    await db.execute(sql);

    sql =
    "INSERT INTO PERGUNTAS (pergunta, alternativa1, alternativa2, alternativa3, alternativa4, alternativaCorreta) VALUES ('Qual atitude pode ajudar uma pessoa comcâncer de pulmão?', 'Evitar conversar com ela sobre a doença', 'Oferecer apoio emocional e estar presente', 'Ignorar os sintomas que ela sente', 'Dizer para ela não pensar no assunto', 'B')";
    await db.execute(sql);

    sql =
    "INSERT INTO PERGUNTAS (pergunta, alternativa1, alternativa2, alternativa3, alternativa4, alternativaCorreta) VALUES ('O tratamento com radioterapia serve para:', 'Curar gripe', 'Remover pedras nos rins', 'Destruir células cancerígenas', 'Tratar alergias', 'C')";
    await db.execute(sql);

    sql =
    "INSERT INTO PERGUNTAS (pergunta, alternativa1, alternativa2, alternativa3, alternativa4, alternativaCorreta) VALUES ('Qual destas substâncias presentes no cigarro é cancerígena?', 'Alcatrão', 'Glicerina', 'Vitamina C', 'Ácido cítrico', 'A')";
    await db.execute(sql);

    sql =
    "INSERT INTO PERGUNTAS (pergunta, alternativa1, alternativa2, alternativa3, alternativa4, alternativaCorreta) VALUES ('Qual é a consequência do câncer de pulmão não tratado?', 'Dor nas unhas', 'Resfriados constantes', 'Metástase para outros órgãos', 'Crescimento dos cabelos', 'C')";
    await db.execute(sql);

    sql =
    "INSERT INTO PERGUNTAS (pergunta, alternativa1, alternativa2, alternativa3, alternativa4, alternativaCorreta) VALUES ('Qual alternativa a seguir representa um grupo de risco para o câncer de pulmão?', 'Crianças que praticam esportes', 'Pessoas que bebem refrigerante', 'Vegetarianos', 'Pessoas expostas à fumaça do cigarro', 'D')";
    await db.execute(sql);

    sql =
    "INSERT INTO PERGUNTAS (pergunta, alternativa1, alternativa2, alternativa3, alternativa4, alternativaCorreta) VALUES ('O que familiares e amigos podem fazer por alguém com câncer de pulmão?', 'Fazer de conta que nada está acontecendo', 'Afastar-se para evitar sofrimento', 'Oferecer apoio, escutar e ter empatia', 'Obrigar a pessoa a se curar rapidamente', 'C')";
    await db.execute(sql);

    sql =
    "INSERT INTO PERGUNTAS (pergunta, alternativa1, alternativa2, alternativa3, alternativa4, alternativaCorreta) VALUES ('Qual destas alternativas ajuda na reabilitação de pacientes com câncer de pulmão?', 'Comer doces em excesso', 'Praticar fisioterapia respiratória', 'Se isolar em casa', 'Tomar remédios sem prescrição', 'B')";
    await db.execute(sql);

    sql =
    "INSERT INTO PERGUNTAS (pergunta, alternativa1, alternativa2, alternativa3, alternativa4, alternativaCorreta) VALUES ('Qual destes sintomas pode indicar que o câncer de pulmão está em estágio avançado?', 'Tontura leve após exercícios', 'Aumento do apetite', 'Perda de peso sem causa aparente', 'Dor nas mãos', 'C')";
    await db.execute(sql);

    sql =
    "INSERT INTO PERGUNTAS (pergunta, alternativa1, alternativa2, alternativa3, alternativa4, alternativaCorreta) VALUES ('Uma forma de apoio comunitário a pessoas com câncer de pulmão é:', 'Evitar falar com elas sobre saúde', 'Compartilhar fake news sobre curas milagrosas', 'Forçar a pessoa a praticar esportes intensos', 'Organizar grupos de escuta e apoio emocional', 'D')";
    await db.execute(sql);

    sql =
    "INSERT INTO PERGUNTAS (pergunta, alternativa1, alternativa2, alternativa3, alternativa4, alternativaCorreta) VALUES ('Em que local o câncer de pulmão geralmente começa?', 'Alvéolos', 'Músculos do tórax', 'Garganta', 'Nariz', 'A')";
    await db.execute(sql);

    sql =
    "INSERT INTO PERGUNTAS (pergunta, alternativa1, alternativa2, alternativa3, alternativa4, alternativaCorreta) VALUES ('Qual das opções abaixo é uma consequência frequente do tabagismo além do câncer de pulmão?', 'Catarata', 'Artrite', 'Doença pulmonar obstrutiva crônica (DPOC)', 'Hipotireoidismo', 'C')";
    await db.execute(sql);

    sql =
    "INSERT INTO PERGUNTAS (pergunta, alternativa1, alternativa2, alternativa3, alternativa4, alternativaCorreta) VALUES ('Que substância presente na fumaça do cigarro prejudica a oxigenação do corpo?', 'Cafeína', 'Monóxido de carbono', 'Glicose', 'Cálcio', 'B')";
    await db.execute(sql);

    sql =
    "INSERT INTO PERGUNTAS (pergunta, alternativa1, alternativa2, alternativa3, alternativa4, alternativaCorreta) VALUES ('Como o exercício físico moderado pode ajudar um paciente com câncer de pulmão?', 'Substituindo a quimioterapia', 'Reduzindo o número de sessões de radioterapia', 'Melhorando a respiração e o bem-estar geral', 'Aumentando o risco de recaída', 'C')";
    await db.execute(sql);

    sql =
    "INSERT INTO PERGUNTAS (pergunta, alternativa1, alternativa2, alternativa3, alternativa4, alternativaCorreta) VALUES ('Um sinal de alerta para o câncer de pulmão que exige atenção médica é:', 'Suor nas mãos ao dormir', 'Tosse com sangue', 'Sonolência após o almoço', 'Dores musculares após esforço físico', 'B')";
    await db.execute(sql);

    sql =
    "INSERT INTO PERGUNTAS (pergunta, alternativa1, alternativa2, alternativa3, alternativa4, alternativaCorreta) VALUES ('Qual a principal forma de diagnóstico por imagem para detectar câncer de pulmão?', 'Ultrassonografia abdominal', 'Endoscopia digestiva', 'Tomografia computadorizada do tórax', 'Ressonância do crânio', 'C')";
    await db.execute(sql);

    sql =
    "INSERT INTO PERGUNTAS (pergunta, alternativa1, alternativa2, alternativa3, alternativa4, alternativaCorreta) VALUES ('O que pode ser feito em campanhas de prevenção ao câncer de pulmão?', 'Incentivar o uso do cigarro eletrônico', 'Aumentar os riscos do fumo passivo', 'Divulgar tratamentos alternativos sem comprovação científica','Distribuir panfletos informativos e promover ações antitabagismo', 'D')";
    await db.execute(sql);

    sql = '''CREATE TABLE explicacaoPartePulmao(
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      explicacaoPulmao TEXT
     )''';
    await db.execute(sql);

    sql =
    "INSERT INTO explicacaoPartePulmao (explicacaoPulmao) VALUES ('Os brônquios são as duas ramificações principais da traqueia, cada uma conduzindo o ar para um dos pulmões (direito e esquerdo). Dentro dos pulmões, os brônquios se dividem em brônquios menores, chamados brônquios secundários e terciários, que distribuem o ar por todo o órgão. Os brônquios também são revestidos por muco e cílios, que ajudam a capturar impurezas e evitar que agentes nocivos cheguem às partes mais delicadas do pulmão.')";
    await db.execute(sql);

    sql =
    "INSERT INTO explicacaoPartePulmao (explicacaoPulmao) VALUES ('O pulmão direito é o maior dos dois pulmões e está localizado na parte direita do tórax. Ele é dividido em três lobos: superior, médio e inferior. Essa divisão facilita a organização interna e a distribuição do ar. Sua função principal é realizar as trocas gasosas, ou seja, absorver o oxigênio que respiramos e liberar o gás carbônico que é produzido pelo corpo. O tamanho maior do pulmão direito ocorre porque ele não precisa dividir espaço com o coração, que está mais deslocado para o lado esquerdo.')";
    await db.execute(sql);

    sql =
    "INSERT INTO explicacaoPartePulmao (explicacaoPulmao) VALUES ('O pulmão esquerdo está localizado no lado esquerdo do tórax e é menor que o pulmão direito. Isso porque o coração ocupa parte do espaço no lado esquerdo do tórax, o que exige uma adaptação anatômica. Ele é dividido em dois lobos: o superior e o inferior. Assim como o pulmão direito, o pulmão esquerdo também tem a função de permitir as trocas gasosas entre o ar e o sangue, sendo igualmente importante, mesmo com um lobo a menos.')";
    await db.execute(sql);

    sql =
    "INSERT INTO explicacaoPartePulmao (explicacaoPulmao) VALUES ('A traqueia é um tubo cartilaginoso que conecta a laringe aos brônquios. Ela é formada por anéis de cartilagem em forma de “C”, que mantêm o canal sempre aberto para a passagem do ar. Sua principal função é levar o ar inspirado até os pulmões e também auxiliar na filtragem de partículas e poeiras, já que é revestida por cílios e muco. Ela se divide ao final em dois brônquios principais, que conduzem o ar a cada pulmão.')";
    await db.execute(sql);

    sql =
    "INSERT INTO explicacaoPartePulmao (explicacaoPulmao) VALUES ('Os lobos são as divisões anatômicas dos pulmões. O pulmão direito tem três lobos (superior, médio e inferior), enquanto o esquerdo tem dois (superior e inferior). Essa divisão torna possível a organização funcional do pulmão, permitindo que cada lobo receba seu próprio suprimento de ar e sangue. Em algumas doenças, a separação por lobos permite que uma área afetada seja tratada ou retirada sem comprometer todo o órgão.')";
    await db.execute(sql);

    sql =
    "INSERT INTO explicacaoPartePulmao (explicacaoPulmao) VALUES ('Os bronquíolos são pequenos canais de ar que se originam dos brônquios. Eles são muito numerosos e estão espalhados por todo o tecido pulmonar. Sua principal função é levar o ar até os alvéolos pulmonares, onde ocorrem as trocas gasosas. Por serem estruturas finas e delicadas, os bronquíolos permitem que o ar chegue até as regiões mais profundas dos pulmões.')";
    await db.execute(sql);

    sql =
    "INSERT INTO explicacaoPartePulmao (explicacaoPulmao) VALUES ('A pleura é uma membrana dupla e fina que reveste cada pulmão e também o interior da parede torácica. Ela é formada por duas camadas: a pleura visceral, que cobre o pulmão diretamente, e a pleura parietal, que recobre a parede interna do tórax. A função da pleura é proteger o pulmão e permitir que ele se movimente suavemente durante a respiração, sem atrito com a parede torácica.')";
    await db.execute(sql);

    sql =
    "INSERT INTO explicacaoPartePulmao (explicacaoPulmao) VALUES ('O fluido pleural é um líquido lubrificante que se encontra entre as duas camadas da pleura (visceral e parietal). Esse fluido tem como função reduzir o atrito durante os movimentos respiratórios. Ele também ajuda a manter os pulmões “aderidos” à parede do tórax, criando uma pressão negativa que facilita a inspiração. Quando há desequilíbrio na quantidade desse fluido, podem surgir problemas respiratórios, como o derrame pleural.')";
    await db.execute(sql);


  }
}
