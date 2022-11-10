import 'package:flutter/material.dart';

import 'package:sorteio_app/core/styles/colors_app.dart';

class GridviewWidgets extends StatefulWidget {
  const GridviewWidgets({super.key});

  @override
  State<GridviewWidgets> createState() => _GridviewWidgetsState();
}

class _GridviewWidgetsState extends State<GridviewWidgets> {
  void _showDialog() {
    showDialog(
        context: context,
        builder: (context) {
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
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Informe o nome',
                      labelStyle: TextStyle(color: Colors.grey, fontSize: 25),
                      border: OutlineInputBorder(),
                      icon: Icon(Icons.person_add),
                    ),
                  ),
                  TextFormField(),
                ],
              ),
            ),
            actions: [
              MaterialButton(
                onPressed: () {},
                child: Text("Adicionar"),
              ),
              MaterialButton(
                onPressed: () {},
                child: Text("Excluir"),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 830,
        width: 830,
        child: GridView.builder(
            itemCount: 100,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 5, mainAxisSpacing: 5, crossAxisCount: 10),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  _showDialog();
                },
                child: Container(
                  width: 5,
                  height: 5,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    color: Color(0xFFe2f2f7),
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('${index + 1}'),
                      ]),
                ),
              );
            }),
      ),
    );
  }
}
