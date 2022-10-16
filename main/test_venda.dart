import '../classes/cliente.dart';
import '../classes/produto.dart';
import '../classes/venda.dart';
import '../classes/venda_item.dart';

main() {
  var venda = Venda(
    cliente: Cliente(nome: 'Otavio', cpf: '095.251.064-09'),
    itens: <VendaItem>[
      VendaItem(
          produto: Produto(
              codigo: 125, nome: 'PC Gamer', preco: 5000.00, desconto: 0.5),
          quantidade: 2
      ),
      VendaItem(
          produto: Produto(
              codigo: 128, nome: 'Monitor', preco: 1000.00, desconto: 0.4),
          quantidade: 3
      )
    ]
  );

  print("Cliente: ${venda.cliente?.nome} \nCPF: ${venda.cliente?.cpf}\n");
  print("Item    Nome       Preço    Desconto    Quantidade");

  for (var v in venda.itens!) {
    print("${v.produto?.codigo}     ${v.produto?.nome}   ${v.produto?.preco}    ${v.produto?.desconto}    ${v.quantidade}");
  }

  print("\nO valor total da venda é: ${venda.getValorTotal()}\n");
}
