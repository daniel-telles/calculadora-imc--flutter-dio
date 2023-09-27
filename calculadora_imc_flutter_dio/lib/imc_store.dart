import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'dart:math';

import 'Pessoa.dart';
part 'imc_store.g.dart';

class ImcStore = _ImcStoreBase with _$ImcStore;

abstract class _ImcStoreBase with Store {
  TextEditingController alturaController = TextEditingController();
  TextEditingController pesoController = TextEditingController();
  TextEditingController nomeController = TextEditingController();
  Pessoa pessoa = Pessoa(altura: 1.2, nome: '', peso: 80.0);

  @observable
  double altura = 0.0;

  @observable
  double peso = 0.0;

  @observable
  String nome = '';

  @computed
  double get imc => calcImc();

  @action
  void setAltura(double novaAltura) {
    altura = novaAltura;
  }

  @action
  void setPeso(double novoPeso) {
    peso = novoPeso;
  }

  @action
  void setNome(String novoNome) {
    nome = novoNome;
  }

  double calcImc() {
    if (altura <= 0.0 || peso <= 0.0) {
      return 0.0;
    }
    double imc = (peso) / pow(altura, 2);
    return imc;
  }

  String classificacao(double imc) {
    if (imc < 16) {
      return 'Magreza grave';
    } else if (imc > 16 && imc < 17) {
      return 'Magreza moderada';
    } else if (imc > 17 && imc < 18.5) {
      return 'Magreza leve';
    } else if (imc > 18.5 && imc < 25) {
      return 'Saudável';
    } else if (imc > 25 && imc < 30) {
      return 'Sobrepeso';
    } else if (imc > 30 && imc < 35) {
      return 'Obesidade Grau I';
    } else if (imc > 35 && imc < 40) {
      return 'Obesidade Grau II (severa)';
    } else if (imc >= 40) {
      return 'Obesidade Grau III (mórbida)';
    } else {
      return 'Não foi possível calcular.';
    }
  }
}
