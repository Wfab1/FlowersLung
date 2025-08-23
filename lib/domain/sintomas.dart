class Sintomas {
  late String titulo;
  late String subtitulo;
  late String texto;

  Sintomas({
    required this.titulo,
    required this.subtitulo,
    required this.texto,
  });
  Sintomas.fromJson(Map<String, dynamic> json) {
    titulo = json['titulo'];
    subtitulo = json['subtitulo'];
    texto = json['texto'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['titulo'] = titulo;
    data['subtitulo'] = subtitulo;
    data['texto'] = texto;
    return data;
  }
}
