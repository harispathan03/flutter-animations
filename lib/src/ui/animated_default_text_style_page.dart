import 'package:flutter/material.dart';

class AnimatedDefaultTextStylePage extends StatefulWidget {
  const AnimatedDefaultTextStylePage({super.key});

  @override
  State<AnimatedDefaultTextStylePage> createState() =>
      _AnimatedDefaultTextStylePageState();
}

class _AnimatedDefaultTextStylePageState
    extends State<AnimatedDefaultTextStylePage> {
  double fontSize = 22;
  Color color = Colors.black;
  FontWeight fontWeight = FontWeight.w400;
  bool _isChanged = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Animated Default TextStyle"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedDefaultTextStyle(
                  style: TextStyle(
                      fontSize: fontSize, color: color, fontWeight: fontWeight),
                  duration: const Duration(milliseconds: 500),
                  child: const Text("Flutter Animation")),
              const SizedBox(height: 30),
              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  onPressed: () {
                    color = _isChanged ? Colors.black : Colors.blue;
                    fontSize = _isChanged ? 22 : 30;
                    fontWeight = _isChanged ? FontWeight.w400 : FontWeight.w700;
                    _isChanged = !_isChanged;
                    setState(() {});
                  },
                  child: const Text(
                    "Animate Style",
                    style: TextStyle(color: Colors.white),
                  )),
            ],
          ),
        ));
  }
}
