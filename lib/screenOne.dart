import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:music_duniya/screen_two.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key,required this.name});
  final String name;

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
   backgroundColor: const Color.fromARGB(255, 218, 165, 228),
        title: Center(child: Text("Welcome "+ widget.name)),

      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: TextButton(child: Text("Go to Screen two"),onPressed: () {
       // Navigator.pop(context);
        // Get.back();
        Get.to(ScreenTwo());
          },),)
        ]
      )
    );
  }
}