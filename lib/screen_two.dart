import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
   backgroundColor: const Color.fromARGB(255, 218, 165, 228),
        title: Center(child: Text("Screen Two")),

      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: TextButton(child: Text("Go back to previous screen"),onPressed: () {
          //  Navigator.push(context, MaterialPageRoute(builder: ((context) => ScreenOne())));
          Get.back();
          },),)
        ]
      )
    );
  }
}