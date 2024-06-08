import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  const AnimatedContainerPage({super.key});

  @override
  State<AnimatedContainerPage> createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  Color color = Colors.red;
  double radius = 15, height = 200, width = 200;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Container"),
      ),
      body: Center(
        child: Column(
          children: [
            AnimatedContainer(
                height: height,
                width: width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(radius),
                  color: color,
                ),
                curve: Curves.easeIn,
                duration: const Duration(milliseconds: 500)),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                onPressed: () {
                  Random random = Random();
                  height = random.nextDouble() * 300;
                  width = random.nextDouble() * 400;
                  color = Color.fromARGB(
                      random.nextInt(256),
                      random.nextInt(256),
                      random.nextInt(256),
                      random.nextInt(256));
                  radius = random.nextDouble() * 50;
                  setState(() {});
                },
                child: const Text(
                  "Animate Container",
                  style: TextStyle(color: Colors.white),
                )),
            const SizedBox(height: 50),
            InkWell(
              onTap: () async {
                setState(() {
                  isLoading = true;
                });
                await Future.delayed(const Duration(seconds: 3), () {
                  setState(() {
                    isLoading = false;
                  });
                });
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 100),
                curve: Curves.easeIn,
                height: 40,
                width: isLoading ? 60 : 220,
                decoration: BoxDecoration(
                    color: Colors.blue, borderRadius: BorderRadius.circular(8)),
                child: Center(
                  child: isLoading
                      ? const CircularProgressIndicator(color: Colors.white)
                      : const Text(
                          "Save Container",
                          style: TextStyle(fontSize: 16, color: Colors.white),
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
