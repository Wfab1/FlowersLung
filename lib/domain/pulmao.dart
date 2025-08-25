class Pulmao{
  late String explicacaoPulmao;

  Pulmao({
    required this.explicacaoPulmao,
  });
  Pulmao.fromJson(Map<String, dynamic> json) {
    explicacaoPulmao = json['explicacaoPulmao'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['explicacaoPulmao'] = this.explicacaoPulmao;
    return data;
  }
}