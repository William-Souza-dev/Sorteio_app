import 'package:flutter/material.dart';

import 'package:sorteio_app/core/styles/colors_app.dart';
import 'package:sorteio_app/core/styles/colors_app.dart';
import 'package:sorteio_app/core/widgets/checkbox_widget.dart';

import '../core/widgets/animation_sorteio_widget.dart';

class AnimationPage extends StatefulWidget {
  const AnimationPage({super.key});

  @override
  State<AnimationPage> createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
      // title: const Text(''),
      // backgroundColor: const Color(0xFFe2f2f7),
      // elevation: 0,
      // foregroundColor: Colors.black,
      // ),
      body: const AnimationSorteioWidget(),
    );
  }
}
