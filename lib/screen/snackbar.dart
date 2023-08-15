
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class SnackBarTest extends StatefulWidget {
  const SnackBarTest({super.key});

  @override
  State<SnackBarTest> createState() => _SnackBarTestState();
}

class _SnackBarTestState extends State<SnackBarTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Snackbar"),centerTitle: true,),
      body: Center(
        child: Container(child: ElevatedButton(onPressed: (){
          Get.snackbar('Hi','I am snackbar',
           icon: Icon(Icons.text_format),
            backgroundColor: Colors.orange,
            snackPosition: SnackPosition.BOTTOM
          );
        }, child: Text("Show")),),
      ),

    );
  }
}
