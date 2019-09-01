class CalculadorImpostos {
  double CalculaImposto(String imposto, double valor) {
    if (imposto == "ICMS") {
      var imposto = ImpostoICMS();
      return imposto.CalculaICMS(valor);
    } else if (imposto == "IPTU") {
      var imposto = ImpostoIPTU();
      return imposto.CalculaIPTU(valor);
    } else if (imposto == "IRRF") {
      var imposto = ImpostoIRRF();
      return imposto.CalculaIRRF(valor);
    } else {
      return 0;
    }
  }
}

class ImpostoICMS {
  double CalculaICMS(double valor) {
    print("executa regra complexa de calculo de ICMS");
    return valor * 0.08;
  }
}

class ImpostoIPTU {
  double CalculaIPTU(double valor) {
    print("executa regra complexa de calculo de IPTU");
    return valor * 0.09;
  }
}

class ImpostoIRRF {
  double CalculaIRRF(double valor) {
    print("executa regra complexa de calculo de IRRF");
    return valor * 0.1;
  }
}
