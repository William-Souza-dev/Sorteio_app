import 'package:flutter/material.dart';

import 'package:sorteio_app/core/styles/colors_app.dart';

class CheckboxWidgets extends StatefulWidget {
  const CheckboxWidgets({
    Key? key,
  }) : super(key: key);

  @override
  State<CheckboxWidgets> createState() => _CheckboxWidgetsState();
}

class _CheckboxWidgetsState extends State<CheckboxWidgets> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          'Pendente',
          style: const TextStyle(fontSize: 25),
        ),
        Checkbox(
            value: isChecked,
            fillColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.disabled)) {
                return context.colors.blackfull.withOpacity(.32);
              }
              return context.colors.blackfull;
            }),
            onChanged: (bool? value) {
              setState(() {
                isChecked = value!;
              });
            }),
      ],
    );
  }
}
