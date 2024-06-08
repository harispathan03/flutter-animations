import 'package:flutter/material.dart';

class ButtonAnimationPage extends StatefulWidget {
  const ButtonAnimationPage({super.key});

  @override
  State<ButtonAnimationPage> createState() => _ButtonAnimationPageState();
}

class _ButtonAnimationPageState extends State<ButtonAnimationPage> {
  double _padding = 8.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Button Animation"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            GestureDetector(
              onTapDown: (details) {
                setState(() {
                  _padding = 0;
                });
              },
              onTapUp: (details) {
                setState(() {
                  _padding = 8.0;
                });
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 50),
                padding: EdgeInsets.only(bottom: _padding),
                decoration: BoxDecoration(
                    color: Colors.grey, borderRadius: BorderRadius.circular(8)),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(8)),
                  child: const Text(
                    "Click me",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
