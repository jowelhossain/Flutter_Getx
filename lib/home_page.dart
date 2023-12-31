import 'package:flutter/material.dart';
import 'package:flutter_getx_project/screen/alart_dialog.dart';
import 'package:flutter_getx_project/screen/bottom_sheet.dart';
import 'package:flutter_getx_project/screen/counter.dart';
import 'package:flutter_getx_project/screen/favourite.dart';
import 'package:flutter_getx_project/screen/languages.dart';
import 'package:flutter_getx_project/screen/slider.dart';
import 'package:flutter_getx_project/screen/snackbar.dart';
import 'package:flutter_getx_project/screen/switch.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GetX"),centerTitle: true,),
      body: Container(
        child: ListView(
          children: [
            ElevatedButton(onPressed: (){
              Get.to(SnackBarTest());
            }, child: Text("SnackBar")),

            ElevatedButton(onPressed: (){
              Get.to(AlartDialogTest());
            }, child: Text("Alart Dialog")),
            ElevatedButton(onPressed: (){
              Get.to(BottomSheetTest());
            }, child: Text("Bottom Sheet")),
      ElevatedButton(onPressed: (){
        Get.to(LanguageConvert());
      },child: Text("Language Translate"),),

            ElevatedButton(onPressed: (){
              Get.to(CounterTest());
            },child: Text("Counter Test"),) ,

            ElevatedButton(onPressed: (){
              Get.to(SliderTest());
            },child: Text("Slider Test"),),

            ElevatedButton(onPressed: (){
              Get.to(SwitchTest());
            },child: Text("Switch"),),

            ElevatedButton(onPressed: (){
              Get.to(FavouriteTest());
            },child: Text("Favourite List"),),

          ],
        ),
      ),
    );
  }
}
