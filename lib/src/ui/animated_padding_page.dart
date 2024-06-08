import 'package:flutter/material.dart';

class AnimatedPaddingPage extends StatefulWidget {
  const AnimatedPaddingPage({super.key});

  @override
  State<AnimatedPaddingPage> createState() => _AnimatedPaddingPageState();
}

class _AnimatedPaddingPageState extends State<AnimatedPaddingPage> {
  bool isPadded = false;
  double padding = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Animated Padding"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedPadding(
                padding: EdgeInsets.all(padding),
                duration: const Duration(milliseconds: 500),
                child: Container(
                  height: 100,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  onPressed: () {
                    isPadded = !isPadded;
                    padding = isPadded ? 0 : 30;
                    setState(() {});
                  },
                  child: const Text(
                    "Change Padding",
                    style: TextStyle(color: Colors.white),
                  )),
            ],
          ),
        ));
  }
}
