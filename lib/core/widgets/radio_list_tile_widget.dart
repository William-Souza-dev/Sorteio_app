import 'package:flutter/material.dart';

import 'package:sorteio_app/core/styles/colors_app.dart';
import 'package:sorteio_app/pages/home/view/home_view.dart';

class RadioListTileWidget extends StatefulWidget {
  const RadioListTileWidget({
    super.key,
  });

  @override
  State<RadioListTileWidget> createState() => _RadioListTileWidgetState();
}

class _RadioListTileWidgetState extends State<RadioListTileWidget> {
  //bool _isRadioSelected = false;
  final HomeView _homeview = HomeView();

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
                value: context.colors.quartuario,
                groupValue: _homeview.color,
                onChanged: ((value) {
                  setState(() {
                    _homeview.color = value;
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
                value: context.colors.secondary,
                groupValue: _homeview.color,
                onChanged: (value) {
                  setState(() {
                    _homeview.color = value;
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
