import 'package:meu_app_imc/class/pessoa.dart';

double calculateImc(Pessoa pessoa) {
  double imc = pessoa.peso/(pessoa.altura * pessoa.altura);
  return imc;
}
