import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Calcular(),
    );
  }
}

class Calcular extends StatefulWidget {
  const Calcular({super.key});

  final String title = "Calculadora";

  @override
  State<Calcular> createState() => _CalcularState();
}

class _CalcularState extends State<Calcular> {
  var v1 = TextEditingController();
  var v2 = TextEditingController();
  double soma = 0;

  void somar(){
    setState((){
      double a  = double.parse(v1.text);
    double b  = double.parse(v2.text);
    soma = a + b ;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: v1,
            decoration: const InputDecoration(
                labelText: "Informe o primeiro valor",
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Colors.black))),
          ),
          const SizedBox(
            height: 30,
          ),
          TextField(
            controller: v2,
              decoration: const InputDecoration(
                  labelText: "Informe o segundo valor",
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 3, color: Colors.red)))),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {
              somar();
            },
            child: const Text("Somar")
          ),
          const SizedBox(
            height: 30,
          ),
          Text("$soma")
        ],
      )),
    );
  }
}
