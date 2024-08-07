import 'package:dartapp/models/veiculo.dart';

void main() {
  metodoVeiculos();
}

int calculate() {
  return 6 * 7;
}

String concatenaTexto(String nome) {
  return 'Meu nome é: $nome';
}

num somar(double a, int b) {
  return a + b;
}

void metodoColecao() {

  List<int> numeros = [1, 2, 3, 5, 20, 12];
  numeros.add(85);

  print("Numeros da Lista $numeros");

  Set<int> numerosPares = {2, 4, 6, 8};
  numerosPares.add(10);

  print("Numeros Set $numerosPares");

  Map<int, List<String>> colecao = {
    1: ['Carne', 'Carvão', 'Farofa'],
    2: ['Gelatina', 'Doce de Leite', 'Brigadeiro']
  };

  print("Cardápio de hoje $colecao");
}

void metodoVeiculos() {
  var onix = Veiculo(312, "Chevrolet", "Onix", 2024, 89000.00);
  var polo = Veiculo(313, "Volkswagen", "Polo", 2024, 94000.00);
  var hb20 = Veiculo(322, "Hyundai", "Hb20", 2024, 96100.00);
  var strada = Veiculo(319, "Fiat", "Strada", 2024, 92000.00);

  List<Veiculo> veiculos = [onix, polo, hb20, strada];

  var listaVeiculos = veiculos.where((veiculo) => veiculo.getValor() <= 95000.00).toList();

  print("Veículos com preço até R\$ 95.000,00: ");
  
  listaVeiculos.forEach((veiculo) {
    print("${veiculo.getMarca()} : ${veiculo.getModelo()}");
  });
}