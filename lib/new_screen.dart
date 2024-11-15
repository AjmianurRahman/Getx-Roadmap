import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_roadmap/uitls/text_300.dart';

class NewScreen extends StatefulWidget {
  const NewScreen({super.key});

  @override
  State<NewScreen> createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            title: Text300(text: 'message'.tr, fontSize: 18),
            subtitle: Text300(text: 'name'.tr, fontSize: 16),
          ),
          SizedBox(height: Get.height*.05,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            OutlinedButton(onPressed: (){
              Get.updateLocale(Locale('en', 'US'));
            }, child: Text300(text: 'Englisgh',fontSize: 14,)),
            OutlinedButton(onPressed: (){
              Get.updateLocale(Locale('bn', 'BD'));
            }, child: Text300(text: 'Bangla',fontSize: 14,)),

          ],),


          SizedBox(height: Get.height*.05,),
          Center(
            child: GestureDetector(
                onTap: () {
                  // Navigator.pop(context);
                  Get.back();
                },
                child: Text300(text: 'GO BACK TO MAIN PAGE', fontSize: 18)),
          )
        ],
      ),
    );
  }
}
