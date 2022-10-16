import 'produto.dart';

class VendaItem {
  Produto? produto;
  int? quantidade; //quantidade de itens no carrinho
  double? _preco;

  VendaItem({Produto? produto, int? quantidade = 1}) {
    this.produto = produto;
    this.quantidade = quantidade;
  }

  double? getPreco() {
    if (produto != null && _preco == null) {
      _preco = produto!.getPrecoComDesconto();
    }
    return _preco;
  }

  void setPreco(double novoPreco) {
    if (novoPreco > 0) {
      _preco = novoPreco;
    }
  }
}
