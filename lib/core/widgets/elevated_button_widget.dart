import 'package:flutter/material.dart';

import 'package:sorteio_app/core/widgets/animation_sorteio_widget.dart';

import '../styles/colors_app.dart';

class ElevatedButtonWidget extends StatefulWidget {
  const ElevatedButtonWidget({super.key});

  @override
  State<ElevatedButtonWidget> createState() => _ElevatedButtonWidgetState();
}

class _ElevatedButtonWidgetState extends State<ElevatedButtonWidget> {
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
                backgroundColor: context.colors.tertiary,
              ),
              onPressed: () {
                Navigator.of(context).push(
                  PageRouteBuilder(
                    opaque: false, // set to false
                    pageBuilder: (_, __, ___) => AnimationSorteioWidget(),
                  ),
                );
              },
              //'/animation'
              child: Text(
                'Sortear',
                style: TextStyle(
                  color: context.colors.blackfull,
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
