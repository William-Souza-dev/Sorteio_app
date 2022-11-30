import 'package:flutter/material.dart';

import '../styles/colors_app.dart';

class CheckboxWidget extends StatefulWidget {
  final String title;
  const CheckboxWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  State<CheckboxWidget> createState() => _CheckboxWidgetState();
}

class _CheckboxWidgetState extends State<CheckboxWidget> {
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
