// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'imc_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ImcStore on _ImcStoreBase, Store {
  Computed<double>? _$imcComputed;

  @override
  double get imc => (_$imcComputed ??=
          Computed<double>(() => super.imc, name: '_ImcStoreBase.imc'))
      .value;

  late final _$alturaAtom =
      Atom(name: '_ImcStoreBase.altura', context: context);

  @override
  double get altura {
    _$alturaAtom.reportRead();
    return super.altura;
  }

  @override
  set altura(double value) {
    _$alturaAtom.reportWrite(value, super.altura, () {
      super.altura = value;
    });
  }

  late final _$pesoAtom = Atom(name: '_ImcStoreBase.peso', context: context);

  @override
  double get peso {
    _$pesoAtom.reportRead();
    return super.peso;
  }

  @override
  set peso(double value) {
    _$pesoAtom.reportWrite(value, super.peso, () {
      super.peso = value;
    });
  }

  late final _$nomeAtom = Atom(name: '_ImcStoreBase.nome', context: context);

  @override
  String get nome {
    _$nomeAtom.reportRead();
    return super.nome;
  }

  @override
  set nome(String value) {
    _$nomeAtom.reportWrite(value, super.nome, () {
      super.nome = value;
    });
  }

  late final _$_ImcStoreBaseActionController =
      ActionController(name: '_ImcStoreBase', context: context);

  @override
  void setAltura(double novaAltura) {
    final _$actionInfo = _$_ImcStoreBaseActionController.startAction(
        name: '_ImcStoreBase.setAltura');
    try {
      return super.setAltura(novaAltura);
    } finally {
      _$_ImcStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPeso(double novoPeso) {
    final _$actionInfo = _$_ImcStoreBaseActionController.startAction(
        name: '_ImcStoreBase.setPeso');
    try {
      return super.setPeso(novoPeso);
    } finally {
      _$_ImcStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
altura: ${altura},
peso: ${peso},
nome: ${nome},
imc: ${imc}
    ''';
  }
}
