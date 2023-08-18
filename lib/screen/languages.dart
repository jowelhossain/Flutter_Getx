
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations{
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
   'en_US': {
     "message":"What is your name?",
     "name": "Jowel Hossain"
   },

    'bn_BD': {
      "message":"আপনার নাম কি?",
      "name": "জুয়েল হোসেন"
    }

  };

}

class LanguageConvert extends StatefulWidget {
  const LanguageConvert({super.key});

  @override
  State<LanguageConvert> createState() => _LanguageConvertState();
}

class _LanguageConvertState extends State<LanguageConvert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("Language Translatiion"),centerTitle: true,),
      body: Column(
        children: [
        Text("message".tr),
        Text("name".tr),

Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
  OutlinedButton(onPressed: (){
    Get.updateLocale(Locale("en","US") );
  }, child: Text("English")),
SizedBox(width: 20,),
  OutlinedButton(onPressed: (){
    Get.updateLocale(Locale("bn","BD") );
  }, child: Text("Bangla")),
],)
      ],),
    );
  }
}
