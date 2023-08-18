
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class BottomSheetTest extends StatefulWidget {
  const BottomSheetTest({super.key});

  @override
  State<BottomSheetTest> createState() => _BottomSheetTestState();
}

class _BottomSheetTestState extends State<BottomSheetTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("GetX Bottom Sheet"),centerTitle: true,),

    body:Column(children: [
ElevatedButton(onPressed: (){

  Get.bottomSheet(Container(
    padding:EdgeInsets.all(10) ,
    decoration: BoxDecoration(
      color: Colors.orange,
      borderRadius: BorderRadius.circular(5),

    ),
    
    child: Column(children: [
      Card(
        color:Colors.lightGreenAccent,
        child: ListTile(
          onTap: (){
            Get.changeTheme(ThemeData.light());
          },
          leading: Icon(Icons.light_mode),
          title:Center(child: Text("Bottom Sheet")),
        ),
      ) ,
      Card(
        color:Colors.lightGreenAccent,
        child: ListTile(
          onTap: (){
            Get.changeTheme(ThemeData.dark());
          },
          leading: Icon(Icons.dark_mode),
          title:Center(child: Text("Bottom Sheet")),
        ),
      )
    ],),
  ));
}, child: Text("Show Bottom Sheet"))
    ],),
    );
  }
}
