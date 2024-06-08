import 'dart:math' as Math;

import 'package:flutter/material.dart';

class TweenAnimationPage extends StatefulWidget {
  const TweenAnimationPage({super.key});

  @override
  State<TweenAnimationPage> createState() => _TweenAnimationPageState();
}

class _TweenAnimationPageState extends State<TweenAnimationPage>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation sizeAnimation;
  late Animation<Color?> colorAnimation;
  late Animation<Rect?> rectAnimation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    )..repeat();
    sizeAnimation = Tween(
      begin: 100.0,
      end: 10.0,
    ).animate(controller);
    colorAnimation = ColorTween(
      begin: Colors.red,
      end: Colors.green,
    ).animate(controller);
    rectAnimation = RectTween(
      begin: const Rect.fromLTWH(0, 0, 100, 100),
      end: const Rect.fromLTWH(300, 100, 10, 10),
    ).animate(controller);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tween Animation"),
        ),
        body: Center(
            child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  AnimatedBuilder(
                    animation: controller,
                    builder: (context, child) {
                      return Positioned.fromRect(
                        rect: rectAnimation.value ??
                            Rect.fromCenter(
                                center: const Offset(5, 5),
                                width: 200,
                                height: 200),
                        child: Container(
                          width: sizeAnimation.value,
                          height: sizeAnimation.value,
                          color: colorAnimation.value,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            TweenAnimationBuilder(
                duration: const Duration(seconds: 5),
                tween: Tween<double>(begin: 0, end: 10000),
                builder: (context, value, child) => Text(
                      "You have won the lottery: ${value.round()}\$",
                      style: const TextStyle(fontSize: 22),
                    )),
            const SizedBox(height: 20),
            TweenAnimationBuilder(
              duration: const Duration(seconds: 2),
              tween: Tween<double>(begin: 0, end: 2 * Math.pi),
              builder: (context, value, child) {
                return Transform.rotate(
                    angle: value,
                    child: Image.asset("assets/images/earth.png", height: 250));
              },
            ),
            TweenAnimationBuilder(
              duration: const Duration(seconds: 4),
              tween: ColorTween(begin: Colors.white, end: Colors.orange),
              builder: (context, value, child) {
                return ColorFiltered(
                    colorFilter: ColorFilter.mode(
                        value ?? Colors.green, BlendMode.modulate),
                    child: Image.asset("assets/images/sun.png", height: 250));
              },
            ),
          ],
        )));
  }
}
