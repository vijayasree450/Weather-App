

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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
              builder: (context, value, child) {
                return Switch(
                  value: value.isDarkMode,
                  onChanged: (val) {
                    value.toggleTheme();
                  },
                  activeThumbColor: Colors.white,
                  thumbColor:
                      const WidgetStatePropertyAll(Colors.orange),
                  thumbIcon: WidgetStatePropertyAll(
                    Icon(
                      value.isDarkMode
                          ? Icons.nightlight_round
                          : Icons.wb_sunny,
                      color: Colors.black,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(50),
        child: Center(
          child: Column(
            children: [
              const Text(
                "Attenganam",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 30),

              Consumer<ThemeProvider>(
                builder: (context, value, child) {
                  return Icon(
                    value.isDarkMode
                        ? Icons.nightlight_round
                        : Icons.wb_sunny,
                    size: 120,
                    color: Colors.orange,
                  );
                },
              ),

              const SizedBox(height: 30),
              const Text(
                '27° C',
                style: TextStyle(fontSize: 40),
              ),
              const Text(
                'Good Morning',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),


                  const SizedBox(height: 300),
              
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
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
