import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_roadmap/new_screen.dart';
import 'package:getx_roadmap/state_screen.dart';
import 'package:getx_roadmap/state_two_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //? Getx dialoge
          Card(
            child: ListTile(
              onTap: () {
                Get.defaultDialog(
                    radius: 4,
                    title: 'Delete chat',
                    backgroundColor: Colors.red.shade700,
                    titlePadding: EdgeInsets.only(top: 20),
                    textConfirm: 'yes',
                    textCancel: 'no',
                    textCustom: 'kjdofj',
                    middleText: "Are you sure yu wanna fuck me?");
              },
              title: Text('GetX Dialog Alert'),
              subtitle: Text('Getx dialogue alert'),
            ),
          ),

          Card(
            child: ListTile(
              title: Text('GetX bottom Sheet'),
              subtitle: Text('This is the sub-title'),
              onTap: () {
                Get.bottomSheet(Container(
                  decoration: BoxDecoration(
                      color: Colors.red.shade700,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(24),
                          topLeft: Radius.circular(24))),
                  child: Column(
                    children: [
                       ListTile(
                        title: Text('Light Theme'),
                        leading: Icon(
                          Icons.light_mode_rounded,
                          color: Colors.white,
                        ),
                         onTap: (){
                           Get.changeTheme(ThemeData.light());
                         },
                      ),

                       ListTile(
                        onTap: (){
                          Get.changeTheme(ThemeData.dark());
                        },
                        title: const Text('Light Theme'),
                        leading:const  Icon(
                          Icons.dark_mode_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ));
              },
            ),
          ),
          const SizedBox(height: 30,),
          OutlinedButton(onPressed:(){
          //  Navigator.push(context, MaterialPageRoute(builder: (context)=>NewScreen()));

            Get.to(NewScreen());
          }, child: Text('New Screen')),
          const SizedBox(height: 30,),
          OutlinedButton(onPressed:(){
            //  Navigator.push(context, MaterialPageRoute(builder: (context)=>NewScreen()));
            Get.to(StateScreen());
          }, child: Text('State Manage Screen')),
          const SizedBox(height: 30,),
          OutlinedButton(onPressed:(){
            //  Navigator.push(context, MaterialPageRoute(builder: (context)=>NewScreen()));
            Get.to(StateTwoScreen());
          }, child: Text('State 2 Manage Screen')),

        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(CupertinoIcons.tornado),
        onPressed: () {
          Get.snackbar('This is the title', 'This is the message',
              snackPosition: SnackPosition.BOTTOM);
        },
      ),
    );
  }
}
