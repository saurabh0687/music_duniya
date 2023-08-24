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
      appBar: AppBar(
   backgroundColor: const Color.fromARGB(255, 218, 165, 228),
        title: Center(child: Text("GetX Tutorial")),

      ),
      body: Column(
        children: [
         Card(
           child: ListTile(
                
                 title: Text("Get x",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                 subtitle: Text("press it"),
                 onTap: () {
                   Get.defaultDialog(
                    titlePadding: EdgeInsets.only(top: 20),
                    title: "Welcome ",middleText: "Are you new to flutter ?",
                    confirm: TextButton(onPressed:() {
                      Navigator.pop(context);
                    }, child: Text("ok")),
                    cancel: TextButton(onPressed:() {
                      Get.back();  // same as Navigator.pop()
                    }, child:Text("cancel")));
                    
                 },

           ),
         )
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed:() {
        Get.snackbar("Saurabh Baghel","Hey don't pressed it",
      //  snackPosition: SnackPosition.BOTTOM
      icon: Icon(Icons.add)
        );

      },),
    );
  }
}