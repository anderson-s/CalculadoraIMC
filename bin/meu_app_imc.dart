import 'package:meu_app_imc/class/pessoa.dart';
import 'package:meu_app_imc/meu_app_imc.dart' as meu_app_imc;
import 'package:meu_app_imc/utils/utils.dart';

void main(List<String> arguments) {
  Utils utils = Utils();
  print("Olá, seja bem vindo ao desafio de calcular IMC");
  String nome = utils.lerNome();
  double peso = utils.lerDoubleComTexto("Digite o peso da pessoa: ");
  double altura = utils.lerDoubleComTexto("Digite a altura da pessoa: ");
  meu_app_imc.classificacao(Pessoa(nome, peso, altura));
}
