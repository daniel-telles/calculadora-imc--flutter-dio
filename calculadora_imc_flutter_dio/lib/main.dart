import 'package:calculadora_imc_flutter_dio/Pessoa.dart';
import 'package:calculadora_imc_flutter_dio/imc_store.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(
        title: 'Calculadora IMC',
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key, required this.title});
  final imcStore = ImcStore();
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(120.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                decoration: const InputDecoration(labelText: 'Nome'),
                onChanged: (value) => imcStore.setNome(value),
                keyboardType: TextInputType.text,
              ),
              TextField(
                decoration: const InputDecoration(labelText: 'Peso (kg)'),
                onChanged: (value) => imcStore.setPeso(double.parse(value)),
                keyboardType: TextInputType.number,
              ),
              TextField(
                decoration: const InputDecoration(labelText: 'Altura (metros)'),
                onChanged: (value) => imcStore.setAltura(double.parse(value)),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 20.0),
              Observer(
                builder: (_) {
                  final imc = imcStore.imc;
                  final nome = imcStore.nome;
                  final classi = imcStore.classificacao(imc);

                  return Column(
                    children: [
                      Text('$nome, seu IMC é: ${imc.toStringAsFixed(2)}.'),
                      const SizedBox(height: 20),
                      Text('Classificação: $classi')
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
