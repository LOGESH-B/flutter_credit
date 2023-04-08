import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class WebPageFlutter extends StatefulWidget {
  const WebPageFlutter({super.key});

  @override
  State<WebPageFlutter> createState() => _WebPageFlutterState();
}

class _WebPageFlutterState extends State<WebPageFlutter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        actions: <Widget>[
          TextButton(
            onPressed: () {},
            child: Text(
              "Home",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              "About",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
         TextButton(
            onPressed: () {},
            child: Text(
              "Career",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            width: 20.0,
          ),
        ],
      ),
      
    );
  }
}
