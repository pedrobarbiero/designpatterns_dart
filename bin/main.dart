import 'package:patterns/chain_of_responsibility/vendas_dp.dart';

main(List<String> arguments) {
  var venda = Venda();
  venda.AdicionarItem(Item("lapis", 1));  
  var calculador = CalculadorDesconto();
  print(calculador.Calcula(venda));
}
