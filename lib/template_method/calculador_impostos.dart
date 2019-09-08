import 'package:patterns/chain_of_responsibility/vendas_dp.dart';

abstract class Imposto {
  double Calcula(Venda venda);
}

class IQ implements Imposto {
  double Calcula(venda) {
    if (venda.valorTotal < 100) {
      return venda.valorTotal * 0.2;
    }

    return venda.valorTotal * 0.3;
  }
}

class IK implements Imposto {
  double Calcula(Venda venda) {
    if (venda.itens.length > 3) {
      return venda.valorTotal * 0.1;
    }
    return venda.valorTotal * 0.05;
  }
}
