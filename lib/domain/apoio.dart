class Apoio{
  late String texto;
  Apoio({
    required this.texto,
  });
  Apoio.fromJson(Map<String, dynamic> json) {
    texto = json['texto'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['texto'] = this.texto;
    return data;
  }
}