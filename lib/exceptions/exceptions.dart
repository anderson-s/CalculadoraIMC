class NomeInvalidoException implements Exception {
  String error() => "Nome inválido";
  @override
  String toString() {
    return "NomeInvalidoException: + ${error()}";
  }
}

class ExceptionsConvertDouble implements Exception {
  final String mensagem;
  ExceptionsConvertDouble(this.mensagem);
 
  @override
  String toString() {
    return mensagem;
  }
}
