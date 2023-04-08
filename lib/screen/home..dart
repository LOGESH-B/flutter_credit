import 'package:credit_flutter/screen/age_calculator.dart';
import 'package:credit_flutter/screen/bmi_calculator.dart';
import 'package:credit_flutter/screen/web_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>AgeCalculator()),
                ),
                child: Text("Age Calculator"),
              ),
              SizedBox(
                height: 10.0,
              ),
              ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BmiCalculator()),
                ),
                child: Text("BMI Calculator"),
              ),
              SizedBox(
                height: 10.0,
              ),
              ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WebPageFlutter()),
                ),
                child: Text("Web Page"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
