import 'package:flutter/material.dart';

import 'package:sorteio_app/core/styles/colors_app.dart';

class CheckboxWidgets extends StatefulWidget {
  final String title;
  const CheckboxWidgets({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  State<CheckboxWidgets> createState() => _CheckboxWidgetsState();
}

class _CheckboxWidgetsState extends State<CheckboxWidgets> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.title,
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
      ),
    );
  }
}
