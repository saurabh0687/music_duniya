import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_duniya/controller/Controller.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ExampleController _exampleController= Get.put(ExampleController());

   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
    
      body:Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
        Text("Notifications"),
       Obx(() => Switch(value: _exampleController.notifications.value, onChanged:(value) {
           _exampleController.SetNotifications(value);
           
          },),
        )

      ],)
    );
  }
}