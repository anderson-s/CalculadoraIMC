import 'dart:convert';
import 'dart:io';

class Utils {
  String lerConsole() {
    return stdin.readLineSync(encoding: utf8) ?? "";
  }

  double? lerDouble() {
    var value = lerConsole();
    try {
      return double.parse(value);
    } catch (error) {
      return null;
    }
  }

  lerConsoleComTexto(String texto, [bool isDouble = false]) {
    print(texto);
    return isDouble ? lerDouble() : lerConsole();
  }
}
