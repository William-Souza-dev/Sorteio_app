import 'package:flutter/material.dart';

import 'package:sorteio_app/core/styles/colors_app.dart';
import 'package:sorteio_app/core/widgets/checkbox_widgets.dart';

class AlertdialogWidgets extends StatefulWidget {
  const AlertdialogWidgets({super.key});

  @override
  State<AlertdialogWidgets> createState() => _AlertdialogWidgetsState();
}

class _AlertdialogWidgetsState extends State<AlertdialogWidgets> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: context.colors.primary,
      title: const Center(child: Text('Adicionar Nome')),
      content: Container(
        height: 700,
        width: 500,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(35)),
        ),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 25.0),
              child: Text(
                "N° 6",
                style: TextStyle(fontSize: 50),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50.0, bottom: 15),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 100,
                color: Colors.amber,
                child: const Text('Nome da Pessoa '),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              color: Colors.amber,
              child: Column(
                children: const [
                  CheckboxWidgets(),
                ],
              ),
            ),
            const Spacer(),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Informe o nome',
                labelStyle: TextStyle(color: Colors.grey, fontSize: 25),
                border: OutlineInputBorder(),
                icon: Icon(Icons.person_add),
              ),
            ),
          ],
        ),
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () {},
              child: const Text("Adicionar"),
            ),
            MaterialButton(
              onPressed: () {},
              child: const Text("Excluir"),
            ),
          ],
        ),
      ],
    );
  }
}
