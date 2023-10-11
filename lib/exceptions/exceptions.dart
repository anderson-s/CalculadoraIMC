class NomeInvalidoException implements Exception {
  String error() => "Nome inválido";
  @override
  String toString() {
    return "NomeInvalidoException: + ${error()}";
  }
}

class DoubleInvalido implements Exception {
 
  @override
  String toString() {
    return "Valor inválido!";
  }
}
