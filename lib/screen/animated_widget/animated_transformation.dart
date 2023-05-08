import 'package:flutter/material.dart';

class AnimatedTransition extends StatelessWidget {
  const AnimatedTransition({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyAnimatedTransition(),
      ),
    );
  }
}

class MyAnimatedTransition extends StatefulWidget {
  const MyAnimatedTransition({super.key});

  @override
  State<MyAnimatedTransition> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyAnimatedTransition> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Center(
        child: Container(
          width: 250.0,
          height: 250.0,
          color: Colors.red,
          child: AnimatedAlign(
            alignment: selected ? Alignment.topRight : Alignment.bottomLeft,
            duration: const Duration(seconds: 1),
            curve: Curves.fastOutSlowIn,
            child: const FlutterLogo(size: 50.0),
          ),
        ),
      ),
    );
  }
}
