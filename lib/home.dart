import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isDayTime = false;
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
        onPressed: (){}, 
        icon:  const  Icon(Icons.more_vert)),
      
      actions:[
        Switch(
          value: isDayTime, 
        onChanged: (value){
          setState(() {
            isDayTime = value;
          });
        })
      ]
      ),
    );
  }
}