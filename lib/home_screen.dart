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
      appBar: AppBar(
   backgroundColor: Color.fromARGB(255, 50, 43, 51),
        title: Center(child: Text("Home")),

      ),
      body:Column(
        children: [
         Obx(() =>Container(
              height: 100,
              width: 100,
              color: Colors.purpleAccent.withOpacity(_exampleController.Opacity.value),
            ),
          ),
        Obx(() =>
            Slider(value: _exampleController.Opacity.value, onChanged: (value) {
               _exampleController.SetOpacity(value);
            
            },),
          )
        ],
      )
    );
  }
}