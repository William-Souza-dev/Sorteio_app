import 'package:flutter/material.dart';

import '../styles/colors_app.dart';

class RadioListTileWidget extends StatefulWidget {
  const RadioListTileWidget({
    super.key,
  });

  @override
  State<RadioListTileWidget> createState() => _RadioListTileWidgetState();
}

class _RadioListTileWidgetState extends State<RadioListTileWidget> {
  //bool _isRadioSelected = false;
  int _groupvalue = 0;
 
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
                value: 0,
                groupValue: _groupvalue,
                onChanged: hadleRadio,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Confirmado'),
              Radio(
                value: 1,
                groupValue: _groupvalue,
                onChanged: hadleRadio,
              )
            ],
          ),
        ],
      ),
    );
  }

  void hadleRadio(int? value) {
    print(value);
    setState(() {
      _groupvalue = value!;
    });
  }
}
