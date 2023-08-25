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
    print("build");
    return Scaffold(
    
     
      body:ListView.builder(
        itemCount: _exampleController.fruitsList.length,
        itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            onTap: () {
              if(_exampleController.fav.contains(_exampleController.fruitsList[index].toString())){
                 _exampleController.removeFav(_exampleController.fruitsList[index].toString());
              }
              else{
                 _exampleController.addFav(_exampleController.fruitsList[index].toString());
              }
              },
            
            
            title: Text(_exampleController.fruitsList[index].toString()),
            trailing: Obx(() =>  Icon(Icons.favorite ,color: _exampleController.fav.contains(_exampleController.fruitsList[index].toString())?Colors.red:Colors.white,)),
          ),
        );
      })
    );
  }
}