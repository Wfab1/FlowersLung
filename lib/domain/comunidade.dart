class Comunidade {
  late String titulo;
  late String nomePostador;
  late String dataPost;
  late String mensagem;
  late String nomeComentador;
  late String dataComentario;
  late String comentario;

  Comunidade({
    required this.titulo,
    required this.nomePostador,
    required this.dataPost,
    required this.mensagem,
    required this.nomeComentador,
    required this.dataComentario,
    required this.comentario,
  });

  Comunidade.fromJson(Map<String, dynamic> json) {
    titulo = json['titulo'];
    nomePostador = json['nomePostador'];
    dataPost = json['dataPost'];
    mensagem = json['mensagem'];
    nomeComentador = json['nomeComentador'];
    dataComentario= json['dataComentario'];
    comentario= json['comentario'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['titulo'] = this.titulo;
    data['nomePostador'] = this.nomePostador;
    data['dataPost'] = this.dataPost;
    data['mensagem'] = this.mensagem;
    data['nomeComentador'] = this.nomeComentador;
    data['dataComentario'] = this.dataComentario;
    data['comentario'] = this.comentario;
    return data;
  }
}