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
      print(DoubleInvalido());
      exit(0);
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
