import 'package:flutter/material.dart';

class AgeCalculator extends StatefulWidget {
  const AgeCalculator({super.key});

  @override
  State<AgeCalculator> createState() => _AgeCalculatorState();
}

class _AgeCalculatorState extends State<AgeCalculator> {
  final TextEditingController age = new TextEditingController();
  var _currage = "";
  final _formkey = new GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Age Calculator"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Your Age is:" + _currage),
                SizedBox(
                  height: 20.0,
                ),
                Form(
                  key: _formkey,
                  child: TextFormField(
                    controller: age,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                        hintText: "Enter your Birth year",
                        labelText: "Enter your Birth year",
                        border: OutlineInputBorder()),
                    validator: (val) {
                      if (val!.length != 4) {
                        return "Must have 4 digits";
                      }
                    },
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (!_formkey.currentState!.validate()) {
                      return;
                    }
                    var input = int.parse(age.text);
                    DateTime nowDate = DateTime.now();
                    int currYear = nowDate.year;
                    var output = currYear - input;
                    setState(() {
                      _currage = output.toString();
                    });
                  },
                  child: Text("Calculate "),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
