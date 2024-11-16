import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_roadmap/state%20manage/favourite_controller.dart';
import 'package:getx_roadmap/uitls/text_300.dart';

class StateTwoScreen extends StatefulWidget {
  const StateTwoScreen({super.key});

  @override
  State<StateTwoScreen> createState() => _StateTwoScreenState();
}

class _StateTwoScreenState extends State<StateTwoScreen> {
  FavouriteController favouriteController = Get.put(FavouriteController());

  @override
  Widget build(BuildContext context) {
    print('THIS IS THE 5555555555555');
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: favouriteController.fruits.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      onTap: () {
                        if (!favouriteController.getSelectedList.contains(
                            favouriteController.fruits[index].toString())) {
                          favouriteController.setToList(
                              favouriteController.fruits[index].toString());

                          print('/+++/ ${favouriteController.getSelectedList}');
                        } else {
                          favouriteController.removeFromList(
                              favouriteController.fruits[index].toString());
                          print('/---/ ${favouriteController.getSelectedList}');
                        }
                      },
                      title: Text300(
                          text: favouriteController.fruits[index].toString(),
                          fontSize: 14),
                      trailing:Obx((){
                        print('THIS IS THE 0000000000');
                        return   Icon(Icons.favorite_rounded,
                            size: 16,
                            color: favouriteController.getSelectedList.contains(
                                favouriteController.fruits[index].toString())
                                ? Colors.pink
                                : Colors.black);
                      }),


                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
