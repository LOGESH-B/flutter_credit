import 'package:flutter/material.dart';
class BmiCalculator extends StatefulWidget {
  const BmiCalculator({super.key});

  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  final _formkey = new GlobalKey<FormState>();
  var _bmi;
  var _status = "";
  TextEditingController height = new TextEditingController();
  TextEditingController weight = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                key: _formkey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Your BMI is:" + _bmi.toString()),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(_status.toString()),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                      controller: height,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                          hintText: "Enter your Height (Cm)",
                          labelText: "Enter your Height (Cm)",
                          border: OutlineInputBorder()),
                      validator: (val) {
                        if (val!.length <= 0) {
                          return "Wrong Input";
                        }
                      },
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      controller: weight,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                          hintText: "Enter your Weight (Kg)",
                          labelText: "Enter your Weight (Kg)",
                          border: OutlineInputBorder()),
                      validator: (val) {
                        if (val!.length <= 0) {
                          return "Wrong Input";
                        }
                      },
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (!_formkey.currentState!.validate()) {
                          return;
                        }
                        var heightval = double.parse(height.text) / 100;
                        var weightval = double.parse(weight.text);

                        var output =
                            (weightval / (heightval * heightval)).round();
                        setState(() {
                          _bmi = output;
                          if (output <= 18.5) {
                            _status = "Under Weight";
                          } else if (output >= 18.5 && output <= 24.9) {
                            _status = "Normal Weight";
                          } else if (output >= 25 && output <= 24.9) {
                            _status = "Over Weight";
                          } else {
                            _status = "Obesity";
                          }
                        });
                      },
                      child: Text("Calculate"),
                    )
                  ],
                ),
              ),
            ),
            Text(
              "BMI Categories",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
                "\nUnderweight = <18.5\nNormal weight = 18.5-24.9\nOverweight = 25-29.9\nObesity = BMI of 30 or greater"),
          ],
        ),
      ),
    );
  }
}
