import 'dart:io';

import 'package:meu_app_imc/class/pessoa.dart';

double calculateImc(Pessoa pessoa) {
  double imc = pessoa.peso / (pessoa.altura * pessoa.altura);
  return imc;
}

classificacao(Pessoa pessoa) {
  if (pessoa.peso == 0.0 || pessoa.peso == 0.0) {
    print(
      "Para calcular o IMC com precisão, a altura e o peso devem ser valores maiores que zero.\nPor favor, reveja os valores que você inseriu.",
    );
    exit(0);
  }
  double resultado = calculateImc(pessoa);
  if (resultado.isInfinite) {
    print("IMC infinito");
  } else if (resultado.isNaN) {
    print("Infelizmente não foi possível calcular.\nTente novamente!");
  } else if (resultado < 16) {
    print("Magreza grave");
  } else if (resultado == 16 || resultado < 17) {
    print("Magreza moderada");
  } else if (resultado == 17 || resultado < 18.5) {
    print("Magreza leve");
  } else if (resultado == 18.5 || resultado < 25) {
    print("Saudável");
  } else if (resultado == 25 || resultado < 30) {
    print("Sobrepeso");
  } else if (resultado == 30 || resultado < 35) {
    print("Obesidade Grau I");
  } else if (resultado == 35 || resultado < 40) {
    print("Obesidade Grau II (severa)");
  } else if (resultado >= 40) {
    print("Obesidade Grau III (mórbida)");
  }
}
