
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
class AlartDialogTest extends StatefulWidget {
  const AlartDialogTest({super.key});

  @override
  State<AlartDialogTest> createState() => _AlartDialogTestState();
}

class _AlartDialogTestState extends State<AlartDialogTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Alart Dialog"),centerTitle: true,),
      body: Column(children: [
        Card(
          color: Colors.yellow,
          child:ListTile(
            title:Text("Show Alart Dialog"),
            subtitle: Text("Press"),
            onTap: (){
              Get.defaultDialog(
                title: "Alart",
                middleText: "this is alart dialog",
                contentPadding: EdgeInsets.all(5),
                content: Column(children: [Text("data")],),
                confirm: TextButton(onPressed: (){Get.back();}, child: Text("OK")),
                cancel: TextButton(onPressed: (){Get.back();}, child: Text("Cancel")),
              );
            },
          ) ,
        )
      ],),
    );
  }
}
