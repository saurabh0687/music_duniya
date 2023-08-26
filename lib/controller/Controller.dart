import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class ExampleController extends GetxController{
 final emailController=TextEditingController().obs;
  final passwordController=TextEditingController().obs;
  RxBool check=false.obs;
    
     void  loginApi() async{
      check.value=true;
      try{
         var response=await put(
         Uri.parse("https://reqres.in/api/login"),
         body:{
          'email':emailController.value.text,
          'password':emailController.value.text,
         });
         var data=jsonDecode(response.body);
         print(response.statusCode);
         print(data);
         if(response.statusCode==200)
         { 
          check.value=false;
          Get.snackbar("Login sucessful", "Congratulations");
         }
         else{
          check.value=false;
          Get.snackbar("Login Unsucessful", "Try again");
         }
      }
      catch (e)
      {
        check.value=false;
         Get.snackbar("Login failed", e.toString());
      }
  
     }

}