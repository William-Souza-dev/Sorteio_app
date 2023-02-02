import 'package:flutter/material.dart';

import 'package:sorteio_app/core/widgets/radio_list_tile_widget.dart';
import 'package:sorteio_app/pages/home/view/home_view.dart';

import '../styles/colors_app.dart';

class AlertDialogWidget extends StatefulWidget {
  final HomeView homeView;
  final VoidCallback callback;
  const AlertDialogWidget(
      {super.key, required this.callback, required this.homeView});

  @override
  State<AlertDialogWidget> createState() => _AlertDialogWidgetState();
}

class _AlertDialogWidgetState extends State<AlertDialogWidget> {
  final TextEditingController _inputController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _infoText = "Informe o Nome";

  void _cleanInputAndName() {
    setState(() {
      _infoText = "Informe o Nome";
      _inputController.clear();
      _formKey = GlobalKey<FormState>();
    });
  }

  void _addName() {
    setState(() {
      _infoText = _inputController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: AlertDialog(
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
                  "N° 7",
                  style: TextStyle(fontSize: 50),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50.0, bottom: 15),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  child: Center(
                      child: Text(
                    _infoText,
                    style: const TextStyle(fontSize: 30),
                  )),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 100,
                child: Column(
                  children: [
                    RadioListTileWidget(
                      callback: widget.callback,
                      homeView: widget.homeView,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: TextFormField(
                  controller: _inputController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Informe o nome";
                    }
                    return null;
                  },
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
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _addName();
                  }
                  Navigator.pop(context);
                  widget.callback();
                },
                child: const Text("Adicionar"),
              ),
              MaterialButton(
                onPressed: _cleanInputAndName,
                child: const Text("Excluir"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
