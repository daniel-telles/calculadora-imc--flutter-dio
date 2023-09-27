

class Pessoa {
  Pessoa({required this.altura, required this.peso, required this.nome});

  double altura = 0.0;
  double peso = 0.0;
  String nome = '';

  double getAltura() {
    return altura;
  }

  void setAltura(double altura) {
    altura = altura;
  }

  double getPeso() {
    return peso;
  }

  void setPeso(double peso) {
    peso = peso;
  }

  String getNome() {
    return nome ;
  }

  void setNome(String nome) {
    nome = nome;
  }

  // double calcImc(double peso, double altura) {
  //   setPeso(peso);
  //   setAltura(altura);

  //   final double imc = getPeso() / pow(getAltura(), 2);

  //   return imc;
  // }

}
