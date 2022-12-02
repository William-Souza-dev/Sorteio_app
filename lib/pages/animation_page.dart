import 'package:flutter/material.dart';

import '../core/widgets/animation_sorteio_widget.dart';

class AnimationPage extends StatefulWidget {
  const AnimationPage({super.key});

  @override
  State<AnimationPage> createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AnimationSorteioWidget(),
    );
  }
}
