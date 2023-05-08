


import 'package:flutter/material.dart';
import 'package:widget_circular_animator/widget_circular_animator.dart';

class AnimatedRing extends StatelessWidget {
  const AnimatedRing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ring"),
        backgroundColor: Colors.green,
      ),
      body:  Center(
          child: WidgetCircularAnimator(
            child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.grey[200]),
              child: Icon(
                Icons.person_outline,
                color: Colors.deepOrange[200],
                size: 60,
              ),
            ),
          )),
    ); // Scaffold
  }
}