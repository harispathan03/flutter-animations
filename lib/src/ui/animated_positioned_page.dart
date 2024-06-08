import 'package:flutter/material.dart';

class AnimatedPositionedPage extends StatefulWidget {
  const AnimatedPositionedPage({super.key});

  @override
  State<AnimatedPositionedPage> createState() => _AnimatedPositionedPageState();
}

class _AnimatedPositionedPageState extends State<AnimatedPositionedPage> {
  bool isShowing = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Animated Positioned"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 300,
                child: Stack(
                  children: [
                    const Positioned(
                      bottom: 60,
                      left: 130,
                      child: Text(
                        "Secret Message",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    AnimatedPositioned(
                        bottom: isShowing ? 150 : 40,
                        left: 100,
                        duration: const Duration(milliseconds: 500),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(15)),
                          height: 100,
                          width: 200,
                        )),
                  ],
                ),
              ),
              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  onPressed: () {
                    isShowing = !isShowing;
                    setState(() {});
                  },
                  child: Text(
                    isShowing ? "Hide Message" : "Show Message",
                    style: const TextStyle(color: Colors.white),
                  )),
            ],
          ),
        ));
  }
}
