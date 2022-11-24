import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class AnimationSorteioWidgets extends StatefulWidget {
  const AnimationSorteioWidgets({super.key});

  @override
  State<AnimationSorteioWidgets> createState() =>
      _AnimationSorteioWidgetsState();
}

class _AnimationSorteioWidgetsState extends State<AnimationSorteioWidgets>
    with SingleTickerProviderStateMixin {
  late final AnimationController animation;

  @override
  void initState() {
    super.initState();
    animation = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
  }

  @override
  void dispose() {
    animation.dispose();

    super.dispose();
  }

  flipCard() {
    animation.forward();
    animation.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: animation,
        builder: (BuildContext context, _) {
          final angulo = animation.value * pi;
          final transform = Matrix4.identity()
            ..setEntry(3, 2, 0.001)
            ..rotateY(angulo);

          return Scaffold(
            body: GestureDetector(
              onTap: () => flipCard(),
              child: Transform(
                transform: transform,
                alignment: Alignment.center,
                child: Center(
                  child: Container(
                    height: 700,
                    width: 500,
                    decoration: const BoxDecoration(
                      color: Color(0xFFe2f2f7),
                      borderRadius: BorderRadius.all(Radius.circular(35)),
                    ),
                    child: const Center(
                      child: Text(
                        '?',
                        style: TextStyle(
                            fontSize: 300, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }
}
