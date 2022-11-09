import 'package:flutter/material.dart';

class ElevatedbuttonWidgets extends StatefulWidget {
  const ElevatedbuttonWidgets({super.key});

  @override
  State<ElevatedbuttonWidgets> createState() => _ElevatedbuttonWidgetsState();
}

class _ElevatedbuttonWidgetsState extends State<ElevatedbuttonWidgets> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 150),
          child: SizedBox(
            height: 60,
            width: 200,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 10,
                backgroundColor: const Color(0xFFcd9f5a),
              ),
              onPressed: () {},
              child: const Text(
                'Sorteiar',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}