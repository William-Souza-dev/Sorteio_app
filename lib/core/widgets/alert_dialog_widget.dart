import 'package:flutter/material.dart';

import '../styles/colors_app.dart';
import 'package:sorteio_app/core/widgets/checkbox_widget.dart';

class AlertDialogWidget extends StatefulWidget {
  const AlertDialogWidget({super.key});

  @override
  State<AlertDialogWidget> createState() => _AlertDialogWidgetState();
}

class _AlertDialogWidgetState extends State<AlertDialogWidget> {
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
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 100,
                child: const Center(
                    child: Text(
                  'Nome da Pessoa ',
                  style: TextStyle(fontSize: 30),
                )),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 100,
              child: Column(
                children: const [
                  CheckboxWidget(
                    title: 'Pendente',
                  ),
                  CheckboxWidget(title: 'Confirmado')
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Informe o nome',
                  labelStyle: TextStyle(color: Colors.grey, fontSize: 25),
                  border: OutlineInputBorder(),
                  icon: Icon(Icons.person_add),
                ),
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
