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
    double valorDesconto = DescontoValorAPartirDe1000().Calcula(venda);
    if (valorDesconto == 0) {
      valorDesconto = DescontoValorAPartirDe100().Calcula(venda);
    }
    if (valorDesconto == 0) {
      valorDesconto = DescontoMaisDe3Itens().Calcula(venda);
    }
    return 0;
  }
}

class DescontoMaisDe3Itens {
  double Calcula(Venda venda) {
    if (venda.itens.length >= 3) {
      return venda.valorTotal * 0.02;
    }
    return 0;
  }
}

class DescontoValorAPartirDe100 {
  double Calcula(Venda venda) {
    if (venda.valorTotal >= 100) {
      return venda.valorTotal * 0.03;
    }
    return 0;
  }
}

class DescontoValorAPartirDe1000 {
  double Calcula(Venda venda) {
    if (venda.valorTotal >= 1000) {
      return venda.valorTotal * 0.04;
    }
    return 0;
  }
}
