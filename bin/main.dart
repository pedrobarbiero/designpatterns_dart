import 'package:patterns/strategy/calculador_impostos_dp.dart';

main(List<String> arguments) {
  var iptu = ImpostoIPTU();
  var calculador = Calcula();
  var valorImposto = calculador.CalculaImposto(iptu, 100);
  print(valorImposto);
}
