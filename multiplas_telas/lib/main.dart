import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Tela1(),
    );
  }
}

class Tela1 extends StatelessWidget {
  const Tela1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tela1'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              print('clicou no botão');
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Tela2();
              }));
            },
            child: const Text('Ir para a tela 2'),
          ),
        ),
      ),
    );
  }
}

class Tela2 extends StatelessWidget {
  const Tela2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tela2'),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              print('Retorna para tela1');
              Navigator.pop(context);
            },
            child: const Text('Ir para a tela 1'),
          ),
        ),
      ),
    );
  }
}
