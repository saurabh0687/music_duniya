import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

double Opacity=.4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
   backgroundColor: const Color.fromARGB(255, 218, 165, 228),
        title: Center(child: Text("Home")),

      ),
      body:Column(
        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.purpleAccent.withOpacity(Opacity),
          ),
          Slider(value: Opacity, onChanged: (value) {
              Opacity=value;
           setState(() {
             
           });
          },)
        ],
      )
    );
  }
}