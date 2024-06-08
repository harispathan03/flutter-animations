import 'package:flutter/material.dart';

class AnimatedPhysicalModelPage extends StatefulWidget {
  const AnimatedPhysicalModelPage({super.key});

  @override
  State<AnimatedPhysicalModelPage> createState() =>
      _AnimatedPhysicalModelPageState();
}

class _AnimatedPhysicalModelPageState extends State<AnimatedPhysicalModelPage> {
  bool isChanged = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Animated Physical Model"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedPhysicalModel(
                duration: const Duration(milliseconds: 500),
                borderRadius: BorderRadius.circular(isChanged ? 15 : 0),
                color: isChanged ? Colors.red : Colors.green,
                shadowColor: isChanged ? Colors.purple : Colors.white,
                elevation: isChanged ? 16 : 0,
                shape: BoxShape.rectangle,
                child: const SizedBox(
                    height: 220, width: 220, child: FlutterLogo()),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  onPressed: () {
                    isChanged = !isChanged;
                    setState(() {});
                  },
                  child: const Text(
                    "Change",
                    style: TextStyle(color: Colors.white),
                  )),
            ],
          ),
        ));
  }
}
