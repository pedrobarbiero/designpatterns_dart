class Venda {
  double valorTotal;
  List<Item> itens;

  Venda() {
    valorTotal = 0;
    itens = List<Item>();
  }

  AdicionarItem(Item item) {
    itens.add(item);
    valorTotal += item.valor;
  }
}

class Item {
  String nome;
  double valor;
  Item(this.nome, this.valor);
}

class CalculadorDesconto {
  double Calcula(Venda venda) {
    var desconto1 = DescontoValorAPartirDe1000();
    var desconto2 = DescontoValorAPartirDe100();
    var desconto3 = DescontoMaisDe3Itens();
    var desconto4 = SemDesconto();

    desconto3.proximo = desconto4;
    desconto2.proximo = desconto3;
    desconto1.proximo = desconto2;

    return desconto1.Calcula(venda);
  }
}

class DescontoMaisDe3Itens implements Desconto {
  double Calcula(Venda venda) {
    if (venda.itens.length >= 3) {
      return venda.valorTotal * 0.02;
    }
    return proximo.Calcula(venda);
  }

  @override
  Desconto proximo;
}

class DescontoValorAPartirDe100 implements Desconto {
  double Calcula(Venda venda) {
    if (venda.valorTotal >= 100) {
      return venda.valorTotal * 0.03;
    }
    return proximo.Calcula(venda);
  }

  @override
  Desconto proximo;
}

class DescontoValorAPartirDe1000 implements Desconto {
  double Calcula(Venda venda) {
    if (venda.valorTotal >= 1000) {
      return venda.valorTotal * 0.04;
    }
    return proximo.Calcula(venda);
  }

  @override
  Desconto proximo;
}

class SemDesconto implements Desconto {
  @override
  Desconto proximo;

  @override
  double Calcula(Venda venda) {
    return 0;
  }
}

abstract class Desconto {
  double Calcula(Venda venda);
  Desconto proximo;
}
