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
    
     
      body:Column(
mainAxisAlignment: MainAxisAlignment.center,
crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    TextFormField(
    controller:_exampleController.emailController.value,
    decoration: InputDecoration(
      hintText: "Email"
    ),
    ),
    SizedBox(height: 50,),
    TextFormField(
      controller:_exampleController.passwordController.value,
      decoration: InputDecoration(
        hintText: "Password"
      ),
    ),
        SizedBox(height: 50,),
    InkWell(
      onTap: () {
        _exampleController.loginApi();
        
      },
      child: Obx(() => _exampleController.check.value? CircularProgressIndicator(): Container(
        height: 50,
        width: 300,
        color: Colors.grey,
      child: Center(child: Text("Login")),
      ),
    )
    )
  ],

      )
    );
  }
}