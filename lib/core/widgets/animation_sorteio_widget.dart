import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

import '../styles/colors_app.dart';

class AnimationSorteioWidget extends StatefulWidget {
  const AnimationSorteioWidget({super.key});

  @override
  State<AnimationSorteioWidget> createState() => _AnimationSorteioWidgetState();
}

class _AnimationSorteioWidgetState extends State<AnimationSorteioWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController animation;

  @override
  void initState() {
    super.initState();
    animation = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 750),
    );
    flipCard();
  }

  @override
  void dispose() {
    animation.dispose();

    super.dispose();
  }

  flipCard() {
    animation.forward();
    animation.repeat();
    Timer(const Duration(seconds: 6), () {
      animation.stop();
      Navigator.of(context).pushNamed('/result');
    });
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
            backgroundColor: Colors.white.withOpacity(0.9),
            body: GestureDetector(
              onTap: () => flipCard(),
              child: Transform(
                transform: transform,
                alignment: Alignment.center,
                child: Center(
                  child: Container(
                    height: 700,
                    width: 500,
                    decoration: BoxDecoration(
                      color: context.colors.primary,
                      borderRadius: const BorderRadius.all(Radius.circular(35)),
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
