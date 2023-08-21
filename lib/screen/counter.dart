import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class CounterController extends GetxController{

  RxInt counter=1.obs;

  incrementCounter(){
    counter.value++;
  }
}


class CounterTest extends StatefulWidget {
  const CounterTest({super.key});

  @override
  State<CounterTest> createState() => _CounterTestState();
}

class _CounterTestState extends State<CounterTest> {
  final CounterController  controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("Counter with GetX"),),
      body:Center(
        child: Container(

          child: Obx(()=>Text(controller.counter.toString(),style: TextStyle(fontSize: 30),)),

        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed:(){
        controller.incrementCounter();

      }
      ,child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

    );
  }
}
