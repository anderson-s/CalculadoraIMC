class Pessoa {
  String _nome;
  double _peso;
  double _altura;

  Pessoa(this._nome, this._peso, this._altura);

  String get nome {
    return _nome;
  }

  set setNome(String nome) {
    _nome = nome;
  }

  double get peso {
    return _peso;
  }

  set setPeso(double peso) {
    _peso = peso;
  }

  double get altura {
    return _altura;
  }

  set setAltura(double altura) {
    _altura = altura;
  }
}
