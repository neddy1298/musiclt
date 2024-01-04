import 'package:flutter/material.dart';
import 'package:musiclt/widgets/header.dart';
import 'package:musiclt/widgets/musiclist.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const HeaderWidget(
              header: 'Home',
              subheader: 'This is a simple app.',
            ),

            // list
            const SizedBox(height: 20.0),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const MusicList();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
