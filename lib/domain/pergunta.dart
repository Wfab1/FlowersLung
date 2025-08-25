class Pergunta {
  late String pergunta;
  late String alternativa1;
  late String alternativa2;
  late String alternativa3;
  late String alternativa4;
  late String respostaCorreta;

  Pergunta(
    this.pergunta,
    this.alternativa1,
    this.alternativa2,
    this.alternativa3,
    this.alternativa4,
    this.respostaCorreta,
  );

  Pergunta.fromJson(Map<String, dynamic> json){
    this.pergunta = json['pergunta'];
    this.alternativa1 = json['alternativa1'];
    this.alternativa2 = json['alternativa2'];
    this.alternativa3 = json['alternativa3'];
    this.alternativa4 = json['alternativa4'];
    this.respostaCorreta = json['alternativaCorreta'];
  }
}
