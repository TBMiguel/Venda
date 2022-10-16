import 'cliente.dart';
import 'venda_item.dart';

class Venda {
  Cliente? cliente;
  List<VendaItem>? itens;

  Venda({this.cliente, this.itens = const []});

  double getValorTotal() {
    return itens!
        .map((item) => item.getPreco()! * item.quantidade!)
        .reduce((total, atual) => total + atual);
  }
}
