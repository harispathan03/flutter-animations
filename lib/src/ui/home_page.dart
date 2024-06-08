import 'package:flutter/material.dart';
import 'package:flutter_animations/src/ui/animated_align_page.dart';
import 'package:flutter_animations/src/ui/animated_container_page.dart';
import 'package:flutter_animations/src/ui/animated_default_text_style_page.dart';
import 'package:flutter_animations/src/ui/animated_opacity_page.dart';
import 'package:flutter_animations/src/ui/animated_padding_page.dart';
import 'package:flutter_animations/src/ui/animated_physical_model_page.dart';
import 'package:flutter_animations/src/ui/animated_positioned_page.dart';
import 'package:flutter_animations/src/ui/animated_size_page.dart';
import 'package:flutter_animations/src/ui/button_animation.dart';
import 'package:flutter_animations/src/ui/staggered_menu_animation.dart';
import 'package:flutter_animations/src/ui/tween_animation_page.dart';
import 'package:flutter_animations/src/widget/custom_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Animations"),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const AnimatedAlignPage()));
                  },
                  child: const CustomButton(buttonText: "Animated Align")),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const AnimatedContainerPage()));
                  },
                  child: const CustomButton(buttonText: "Animated Container")),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            const AnimatedDefaultTextStylePage()));
                  },
                  child: const CustomButton(
                      buttonText: "Animated Default TextStyle")),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const AnimatedOpacityPage()));
                  },
                  child: const CustomButton(buttonText: "Animated Opacity")),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const AnimatedPaddingPage()));
                  },
                  child: const CustomButton(buttonText: "Animated Padding")),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            const AnimatedPhysicalModelPage()));
                  },
                  child: const CustomButton(
                      buttonText: "Animated Physical Model")),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const AnimatedPositionedPage()));
                  },
                  child: const CustomButton(buttonText: "Animated Positioned")),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const AnimatedSizePage()));
                  },
                  child: const CustomButton(buttonText: "Animated Size")),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const TweenAnimationPage()));
                  },
                  child: const CustomButton(buttonText: "Tween Animation")),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            const StaggeredMenuAnimationPage()));
                  },
                  child: const CustomButton(
                      buttonText: "Staggered Menu Animation")),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ButtonAnimationPage()));
                  },
                  child: const CustomButton(buttonText: "Button Animation")),
            ),
          ],
        ));
  }
}
