import 'package:flutter/material.dart';

import 'package:sorteio_app/core/styles/colors_app.dart';
import 'package:sorteio_app/pages/home/view/home_view.dart';

class RadioListTileWidget extends StatefulWidget {
  final Function callback;
  const RadioListTileWidget({
    super.key,
    required this.callback,
  });

  @override
  State<RadioListTileWidget> createState() => _RadioListTileWidgetState();
}

class _RadioListTileWidgetState extends State<RadioListTileWidget> {
  HomeView _homeview = HomeView();

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
                groupValue: _homeview.color,
                onChanged: ((value) {
                  print('cor antes da atualização ${_homeview.color}');
                  setState(() {
                    _homeview.color = value;
                    _homeview.notifyListeners();
                    widget.callback();
                    print('depois da atualização_${_homeview.color}');
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
                groupValue: _homeview.color,
                onChanged: (value) {
                  print('cor antes da atualização ${_homeview.color}');
                  setState(() {
                    _homeview.color = value;
                    _homeview.notifyListeners();

                    widget.callback();
                    print('depois da atualização_${_homeview.color}');
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
