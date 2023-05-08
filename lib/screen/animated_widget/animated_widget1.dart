import 'package:credit_flutter/screen/animated_widget/animated_container.dart';
import 'package:credit_flutter/screen/animated_widget/animated_ring.dart';
import 'package:credit_flutter/screen/animated_widget/animated_rounded.dart';
import 'package:credit_flutter/screen/animated_widget/animated_size.dart';
import 'package:credit_flutter/screen/animated_widget/animated_transformation.dart';
import 'package:flutter/material.dart';

class AnimatedWidget1 extends StatelessWidget {
  const AnimatedWidget1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List items = <Widget>[
      ElevatedButton(
        child: const Text('Animated Container!'),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AnimatedContainerApp()));
        },
      ), // ElevatedButton
      ElevatedButton(
        child: const Text('Rounded Animation!'),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AnimatedRound()));
        },
      ),
      ElevatedButton(
        child: const Text('Transition Animation!'),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AnimatedTransition()));
        },
      ),
      ElevatedButton(
        child: const Text('Size animation'),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Animated_size()));
        },
      ),
      ElevatedButton(
        child: const Text('Ring animation!'),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AnimatedRing()));
        },
      ), // ElevatedButton
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation example'),
        backgroundColor:Colors.blueAccent,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount:2,
                crossAxisSpacing: items.length-1,
                mainAxisSpacing: items.length-1,
                childAspectRatio: 1.0
              ),
              itemCount: items.length,
              itemBuilder: (context, index) => items[index]),
        ),
      ),
    );
  }
}
