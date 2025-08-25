class Mensagemrespostaerrada{
  late String mensagem;
  late int pontos;

  Mensagemrespostaerrada({
    required this.mensagem,
  });
  Mensagemrespostaerrada.fromJson(Map<String, dynamic> json) {
    mensagem = json['mensagem'];
    pontos = json['pontos'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['mensagem'] = this.mensagem;
    data['pontos'] = this.pontos;
    return data;
  }
}