import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_roadmap/state%20manage/counter_controller.dart';
import 'package:getx_roadmap/state%20manage/example_tow.dart';
import 'package:getx_roadmap/uitls/text_300.dart';

class StateScreen extends StatefulWidget {
  const StateScreen({super.key});

  @override
  State<StateScreen> createState() => _StateScreenState();
}

class _StateScreenState extends State<StateScreen> {
  final CounterController controller = Get.put(CounterController());
  int x = 20;

  final ExampleTow exampleTow = Get.put(ExampleTow());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child:
              //? User Obx to notify the listener about the change
              Obx(() {
            return Text300(text: controller.counter.toString(), fontSize: 25);
          })),
          Obx(() {
            return Column(
              children: [
                Container(
                  width: Get.width,
                  color: Colors.red.withOpacity(exampleTow.opacity.value),
                  height: MediaQuery.of(context).size.height * 0.3,
                ),
                CupertinoSlider(
                    value: exampleTow.opacity.value,
                    onChanged: (value) {
                      exampleTow.setOpacity(value);
                    })
              ],
            );
          }),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.incrementCounet();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
