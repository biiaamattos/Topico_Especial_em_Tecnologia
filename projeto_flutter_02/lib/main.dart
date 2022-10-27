import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ListaDeTarefas(title: 'Lista de Tarefas'),
    );
  }
}

class ListaDeTarefas extends StatefulWidget {
  const ListaDeTarefas({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<ListaDeTarefas> createState() => _ListaDeTarefasState();
}

class _ListaDeTarefasState extends State<ListaDeTarefas> {
  TextEditingController campoDeTexto = TextEditingController();

  void adicionarTarefa() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                      child: TextField(
                    decoration: const InputDecoration(
                        labelText: "Tarefa a fazer",
                        border: OutlineInputBorder()),
                    controller: campoDeTexto,
                  )),
                  const SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: adicionarTarefa,
                    child: const Text("Adicionar"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
