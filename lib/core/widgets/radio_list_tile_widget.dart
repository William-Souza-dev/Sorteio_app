import 'package:flutter/material.dart';

import 'package:sorteio_app/core/styles/colors_app.dart';
import 'package:sorteio_app/pages/home/view/home_view.dart';

class RadioListTileWidget extends StatefulWidget {
  final HomeView homeView;
  final Function callback;
  const RadioListTileWidget({
    super.key,
    required this.callback,
    required this.homeView,
  });

  @override
  State<RadioListTileWidget> createState() => _RadioListTileWidgetState();
}

class _RadioListTileWidgetState extends State<RadioListTileWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Pendente'),
              Radio(
                value: ColorsApp.i.quartuario,
                groupValue: widget.homeView.color,
                onChanged: ((value) {
                  print('cor antes da atualização ${widget.homeView.color}');
                  setState(() {
                    widget.homeView.color = value;
                    widget.homeView.notifyListeners();
                    widget.callback();
                    print('depois da atualização_${widget.homeView.color}');
                  });
                }),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Confirmado'),
              Radio(
                value: ColorsApp.i.secondary,
                groupValue: widget.homeView.color,
                onChanged: (value) {
                  print('cor antes da atualização ${widget.homeView.color}');
                  setState(() {
                    widget.homeView.color = value;
                    widget.homeView.notifyListeners();
                    widget.callback();
                    print('depois da atualização_${widget.homeView.color}');
                  });
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
