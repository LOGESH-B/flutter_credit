import 'package:flutter/material.dart';

class ButtonApp extends StatelessWidget {
  const ButtonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorSchemeSeed: const Color(0xff6750a4), useMaterial3: true),
      title: 'Button Types',
      home: const Scaffold(
        body: ButtonTypesExample(),
      ),
    );
  }
}

class ButtonTypesExample extends StatelessWidget {
  const ButtonTypesExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Button Types"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Row(
          children: const <Widget>[
            Spacer(),
            ButtonTypesGroup(enabled: true),
            ButtonTypesGroup(enabled: false),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

class ButtonTypesGroup extends StatelessWidget {
  const ButtonTypesGroup({super.key, required this.enabled});

  final bool enabled;

  @override
  Widget build(BuildContext context) {
    final VoidCallback? onPressed = enabled ? () {} : null;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          ElevatedButton(
            onPressed: () {
              showdialog(context,"Elevated Button clicked");
            },
            child: const Text("Elevated Button"),
          ),
          FilledButton(
            onPressed: () {
              showdialog(context,"Filled Button Clicked");
            },
            child: const Text("Filled Button"),
          ),
          FilledButton.tonal(
            onPressed: () {
              showdialog(
               context,"Filled Tonal Button CLicked"
              );
            },
            child: const Text("Filled Tonal Button"),
          ),
          ElevatedButton(
            onPressed: () {
              showdialog(
                context,
                "Outlined Button Clicked"
              );
            },
            child: const Text("Outlined Button"),
          ),
          TextButton(
            onPressed: () {
               showdialog(
                context,
                "Text Button Clicked"

              );
            },
            child: const Text("Text Button"),
          ),
        ],
      ),
    );
  }
  
  void showdialog(context,s) {
    showDialog(
                context: context,
                builder: (ctx) => AlertDialog(
                  title: const Text("Alert Dialog Box"),
                  content: Text(s),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.of(ctx).pop();
                      },
                      child: Container(
                        color: Colors.blueAccent,
                        padding: const EdgeInsets.all(14),
                        child: const Text("OK",style: TextStyle(color: Colors.white),),
                      ),
                    ),
                  ],
                ),
              );
  }
}


