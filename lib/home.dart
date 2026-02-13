
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weatherapp/theme.dart';
import 'package:weatherapp/theme.provider.dart' show ThemeProvider;


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.more_vert),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Consumer<ThemeProvider>(
              builder: (context, ThemeProvider, child) {
                return Switch(
                  activeColor: Colors.black,
                  inactiveThumbColor: Colors.black,
                  thumbColor: const MaterialStatePropertyAll(Colors.orange),
                  inactiveTrackColor: Colors.transparent,
                  thumbIcon: MaterialStatePropertyAll(
                    Icon(
                      ThemeProvider.isDarkMode
                          ? Icons.wb_sunny
                          : Icons.nightlight_round,
                      color: Colors.black,
                    ),
                  ),
                  value: ThemeProvider.isDarkMode,
                  onChanged: (value) {
                    ThemeProvider.toggleTheme();
                  },
                );
                 
                  },
                ),
              
            ),
          
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Center(
          child: Column(
            children: const [
              Text(
                "Attenganam",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 30),
              Icon(
                Icons.wb_sunny,
                size: 250,
                color: Colors.orange,
              ),
              SizedBox(height: 30),
              Text(
                '27° C',
                style: TextStyle(fontSize: 30),
              ),
              Text(
                'Good Morning',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 30),
              SizedBox(
                width: 50,
                child: Divider(thickness: 3),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Icon(Icons.wb_twilight, size: 40),
                      Text("SUNRISE"),
                      Text("6:00 AM"),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                    child: VerticalDivider(thickness: 1),
                  ),
                  Column(
                    children: [
                      Icon(Icons.air, size: 40),
                      Text("Wind"),
                      Text("4 m/s"),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                    child: VerticalDivider(thickness: 1),
                  ),
                  Column(
                    children: [
                      Icon(Icons.thermostat, size: 40),
                      Text("Temperature"),
                      Text("23°"),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

