class Produto {
  int? codigo;
  String? nome;
  double? preco;
  double? desconto;

  Produto({int? codigo, String? nome, double? preco, double? desconto = 0}) {
    this.codigo = codigo;
    this.nome = nome;
    this.preco = preco;
    this.desconto = desconto;
  }

  double? getPreco() {
    return this.preco;
  }

  double? getDesconto() {
    return this.desconto;
  }

  double getPrecoComDesconto() {
    return (1 - getDesconto()!) * getPreco()!;
  }
}
