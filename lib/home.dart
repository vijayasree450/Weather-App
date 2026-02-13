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
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Switch(
            activeColor: Colors.black,
            inactiveThumbColor: Colors.black,
            thumbColor: const MaterialStatePropertyAll(Colors.orange),
            inactiveTrackColor: Colors.transparent,
            thumbIcon: MaterialStatePropertyAll(
              Icon( 
                isDayTime 
                ? Icons.wb_sunny : 
                Icons.nightlight_round,
                color: Colors.black,)
            ),
            value: isDayTime, 
          onChanged: (value){
            setState(() {
              isDayTime = value;
            });
          }),
        ),
      ],
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Center(
        child: Column(
          children: [
            Text(
              "Attenganam",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
              
              
              ),
            Icon(
              Icons.wb_sunny,
               size: 250, 
               color: Colors.orange)
          ],

        ),
      ),
      ),
    );
  }
}