
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class NotificationController{

  RxBool notification=true.obs;

  setNotification(bool value){
    notification.value=value;
  }
}




class SwitchTest extends StatefulWidget {
  const SwitchTest({super.key});

  @override
  State<SwitchTest> createState() => _SwitchTestState();
}

class _SwitchTestState extends State<SwitchTest> {

  NotificationController notificationController=Get.put(NotificationController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GetX Switch"),),
      body:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Notification"),
          Obx(() =>Switch(value:notificationController.notification.value, onChanged:(value){
notificationController.setNotification(value);

          }))
        ],
      ),
    );
  }
}
