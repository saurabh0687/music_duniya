import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_duniya/screenOne.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
   backgroundColor: const Color.fromARGB(255, 218, 165, 228),
        title: Center(child: Text("Welcome")),

      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: TextButton(child: Text("Go to Screen One"),onPressed: () {
           // Navigator.push(context, MaterialPageRoute(builder: ((context) => ScreenOne())));//Flutter navigation
           Get.to(ScreenOne(name: "Saurabh",));
          },),)
        ]
      )
    );
  }
}