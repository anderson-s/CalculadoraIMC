import 'package:meu_app_imc/class/pessoa.dart';
import 'package:meu_app_imc/meu_app_imc.dart' as meu_app_imc;
import 'package:meu_app_imc/utils/utils.dart';

void main(List<String> arguments) {
  Utils utils = Utils();
  print("Olá, seja bem vindo ao desafio de calcular IMC");
  String? nome = utils.lerConsoleComTexto("Por favor, digite o nome da pessoa:");
  double peso =
      utils.lerConsoleComTexto("Agora, digite o peso da pessoa: ", true);
  double altura =
      utils.lerConsoleComTexto("E por fim, digite a altura da pessoa: ", true);


}
