abstract class Imposto {
  double Calcula(double valor);
}

class Calcula {
  double CalculaImposto(Imposto imposto, double valor) {
    return imposto.Calcula(valor);
  }
}

class ImpostoICMS implements Imposto {
  @override
  double Calcula(double valor) {
    print("executa regra complexa de calculo de ICMS");
    return valor * 0.08;
  }
}

class ImpostoIPTU implements Imposto {
  @override
  double Calcula(double valor) {
    print("executa regra complexa de calculo de IPTU");
    return valor * 0.09;
  }
}

class ImpostoIRRF implements Imposto {
  @override
  double Calcula(double valor) {
    print("executa regra complexa de calculo de IRRF");
    return valor * 0.1;
  }
}
