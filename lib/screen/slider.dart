import 'package:flutter/material.dart';

class SliderTest extends StatefulWidget {
  const SliderTest({super.key});



  @override
  State<SliderTest> createState() => _SliderTestState();
}

class _SliderTestState extends State<SliderTest> {
  double opacity=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Slider with GetX"),),
      body: Column(children: [
        Container(
          height: 100,
          width: 100,
          color: Colors.red.withOpacity(opacity)

        ),
        Slider(value: opacity, onChanged: (value){

          opacity=value;
          setState(() {

          });
        })

      ],),
    );
  }
}
