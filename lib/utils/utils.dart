import 'dart:convert';
import 'dart:io';

import 'package:meu_app_imc/exceptions/exceptions.dart';

class Utils {
  String lerConsole() {
    return stdin.readLineSync(encoding: utf8) ?? "";
  }

  double lerDouble() {
    var console = lerConsole();
    double valor = 0.0;
    try {
      console = console.replaceAll(",", ".");
      valor = double.parse(console);
    } catch (error) {
      throw ExceptionsConvertDouble("Valor inválido!");
    }
    if (valor == 0.0) {
      throw ExceptionsConvertDouble(
        "Para calcular o IMC com precisão, a altura e o peso devem ser valores maiores que zero.\nPor favor, reveja os valores que você inseriu.",
      );
    }
    if (valor < 0) {
      throw ExceptionsConvertDouble(
        "Os valores de altura e peso não podem ser negativos.\nPor favor, insira valores positivos.",
      );
    }
    return valor;
  }

  String lerNome() {
    print("Por favor, digite o nome da pessoa:");
    String nome = "";
    nome = lerConsole();
    while (nome == "") {
      print("O nome da pessoa não pode estar vazio!");
      print("Digite o nome para continuar:");
      nome = lerConsole();
    }
    return nome;
  }

  lerDoubleComTexto(String texto) {
    print(texto);
    return lerDouble();
  }
}
