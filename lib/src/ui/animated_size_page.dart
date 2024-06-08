import 'package:flutter/material.dart';

class AnimatedSizePage extends StatefulWidget {
  const AnimatedSizePage({super.key});

  @override
  State<AnimatedSizePage> createState() => _AnimatedSizePageState();
}

class _AnimatedSizePageState extends State<AnimatedSizePage> {
  double size = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Animated Size"),
        ),
        body: Center(
          child: GestureDetector(
            onTap: () {
              setState(() {
                size = size == 100 ? 200 : 100;
              });
            },
            child: AnimatedSize(
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeIn,
              child: FlutterLogo(size: size),
            ),
          ),
        ));
  }
}
