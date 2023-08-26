import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SliderTestController extends GetxController{

RxDouble opacity= 0.4.obs;

setOpacity(double value){
  opacity.value=value;
}
}

class SliderTest extends StatefulWidget {
  const SliderTest({super.key});



  @override
  State<SliderTest> createState() => _SliderTestState();
}

class _SliderTestState extends State<SliderTest> {

  SliderTestController sliderTestController=Get.put(SliderTestController());
  double opacity=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Slider with GetX"),),
      body: Column(children: [
        Obx(()=>Container(
            height: 100,
            width: 100,
            color: Colors.red.withOpacity(sliderTestController.opacity.value)

          ),
        ),
        Obx(() =>Slider(value: sliderTestController.opacity.value, onChanged: (value){

        sliderTestController.setOpacity(value);
        }))

      ],),
    );
  }
}
