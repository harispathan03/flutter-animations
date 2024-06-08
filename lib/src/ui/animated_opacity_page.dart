import 'package:flutter/material.dart';

class AnimatedOpacityPage extends StatefulWidget {
  const AnimatedOpacityPage({super.key});

  @override
  State<AnimatedOpacityPage> createState() => _AnimatedOpacityPageState();
}

class _AnimatedOpacityPageState extends State<AnimatedOpacityPage> {
  bool isVisible = true;
  double opacity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Animated Opacity"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedOpacity(
                  opacity: opacity,
                  duration: const Duration(milliseconds: 500),
                  child: const Text(
                    "Flutter",
                    style: TextStyle(fontSize: 28),
                  )),
              const SizedBox(height: 30),
              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  onPressed: () {
                    opacity = isVisible ? 0 : 1;
                    isVisible = !isVisible;
                    setState(() {});
                  },
                  child: Text(
                    isVisible ? "Hide" : "See",
                    style: const TextStyle(color: Colors.white),
                  )),
            ],
          ),
        ));
  }
}
