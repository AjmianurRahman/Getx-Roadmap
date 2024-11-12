import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        
      ],),
      floatingActionButton: FloatingActionButton(
        child: Icon(CupertinoIcons.tornado),
        onPressed: () {
        Get.snackbar('This is the title', 'This is the message', snackPosition: SnackPosition.BOTTOM);
      },
        
      ),
    );
  }
}
