// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'views/favorite.dart';
import 'views/home.dart';
import 'views/setting.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue, // Set your desired theme
      ),
      // Define the bottom navigation bar
      home: Scaffold(
        body: const Padding(
          padding: EdgeInsets.all(8.0),
          child: HomePage(),
          // child: FavoritePage(),
          // child: SettingPage(),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Setting',
            ),
            // Add more BottomNavigationBarItems if needed
          ],
          currentIndex: 0, // Set the initial active item index
          onTap: (int index) {
            // Handle taps on each item
            // When a bottom navigation bar item is tapped, the body of the app is rebuilt with a new widget

            // if (index == 0) {
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(builder: (context) => const HomePage()),
            //   );
            // } else if (index == 1) {
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(builder: (context) => const FavoritePage()),
            //   );
            // } else if (index == 2) {
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(builder: (context) => const SettingPage()),
            //   );
            // }
          },
        ),
      ),
    );
  }
}
