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
        title: Center(child: Text("Bottom Sheet and Change theme")),

      ),
      body: Column(
        children: [
         Card(
           child: ListTile(
                
                 title: Text("Bottom Sheet",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                 subtitle: Text("press it"),
                 onTap: () {
                 Get.bottomSheet(
                 
                  Container(
                    color: Colors.blueGrey,
                    child: Column(
                        
                     children: [
                       ListTile(
                         leading: Icon(Icons.light_mode),
                         title: Text("Light Theme"), 
                         onTap: () {
                           Get.changeTheme(ThemeData.light());
                         },
                       ),
                        ListTile(
                         leading: Icon(Icons.dark_mode),
                         title: Text("Dark Theme"), 
                           onTap: () {
                               Get.changeTheme(ThemeData.dark());
                           },
                       )
                     ],
                    ),
                  )
                 );
                    
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