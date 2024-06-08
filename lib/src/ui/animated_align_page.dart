import 'package:flutter/material.dart';

class AnimatedAlignPage extends StatefulWidget {
  const AnimatedAlignPage({super.key});

  @override
  State<AnimatedAlignPage> createState() => _AnimatedAlignPageState();
}

class _AnimatedAlignPageState extends State<AnimatedAlignPage> {
  AlignmentGeometry _startAlignment = Alignment.bottomLeft;
  AlignmentGeometry _endAlignment = Alignment.topRight;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Align"),
      ),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 10),
        child: Stack(
          children: [
            AnimatedAlign(
                alignment: _startAlignment,
                curve: Curves.easeIn,
                duration: const Duration(seconds: 3),
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.red),
                )),
            Center(
              child: ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  onPressed: () {
                    AlignmentGeometry temp = _startAlignment;
                    _startAlignment = _endAlignment;
                    _endAlignment = temp;
                    setState(() {});
                  },
                  child: const Text(
                    "Start",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
            AnimatedAlign(
                alignment: _endAlignment,
                curve: Curves.easeIn,
                duration: const Duration(seconds: 3),
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.green),
                )),
          ],
        ),
      ),
    );
  }
}
