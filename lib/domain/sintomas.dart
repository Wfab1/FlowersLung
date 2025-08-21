class Sintomas{
  late String texto;
  Sintomas({
    required this.texto,
});
  Sintomas.fromJson(Map<String, dynamic> json) {
    texto = json['texto'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['texto'] = this.texto;
    return data;
  }
}