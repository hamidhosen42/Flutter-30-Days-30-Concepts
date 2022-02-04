// ignore_for_file: prefer_const_constructors

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedTextWidget extends StatelessWidget {
  const AnimatedTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Text Widget in Flutter"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            // ----------------AnimatedTextKit----------
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText('Discipline is the best tool'),
                TypewriterAnimatedText('Design first, then code'),
                TypewriterAnimatedText('Do not patch bugs out, rewrite them'),
                TypewriterAnimatedText('Do not test bugs out, design them out'),
                TypewriterAnimatedText(
                  "East Delta University",
                  textStyle:
                      TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  speed: Duration(milliseconds: 400),
                ),
              ],
              totalRepeatCount: 4,
              pause: Duration(milliseconds: 200),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
            ),
            SizedBox(
              height: 20,
            ),
            // --------Rotate #---------------
            AnimatedTextKit(animatedTexts: [
              RotateAnimatedText('AWESOME'),
              RotateAnimatedText('OPTIMISTIC'),
              RotateAnimatedText('DIFFERENT'),
            ]),
            SizedBox(
              height: 20,
            ),
            // -------------Fade #------------------
            AnimatedTextKit(animatedTexts: [
              FadeAnimatedText('do IT!'),
              FadeAnimatedText('do it RIGHT!!'),
              FadeAnimatedText('do it RIGHT NOW!!!'),
            ]),
            // ---------Typer-------------
            AnimatedTextKit(animatedTexts: [
              TyperAnimatedText('It is not enough to do your best,'),
              TyperAnimatedText('you must know what to do,'),
              TyperAnimatedText('and then do your best'),
              TyperAnimatedText('- W.Edwards Deming'),
            ]),
          ],
        ),
      ),
    );
  }
}