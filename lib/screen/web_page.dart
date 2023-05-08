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
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .5,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrMMT875Z40STP32VT6rzcTYCy250lijyOWVBgON7H6MFktmDYXcZ9QLhRpxE5z0793zs&usqp=CAU'),
                Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQlsGXyQnrK4krmkfXwm1NhbvAQRAvQDW-dw&usqp=CAU'),
                Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnGUUuWPNapkdQezAMRQpCgl6VI_0i_pf0nw&usqp=CAU'),
              ],
            ),
          ),
          Text("About React",style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold),),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                "               React (also known as React.js or ReactJS) is a free and open-source front-end JavaScript library[3][4] for building user interfaces based on components. It is maintained by Meta (formerly Facebook) and a community of individual developers and companies.React can be used to develop single-page, mobile, or server-rendered applications with frameworks like Next.js. Because React is only concerned with the user interface and rendering components to the DOM, React applications often rely on libraries for routing and other client-side functionality."
                ),
          ),
        ],
      ),
    );
  }
}
