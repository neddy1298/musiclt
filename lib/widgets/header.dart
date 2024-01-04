import 'package:flutter/material.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({
    super.key,
    required this.header,
    required this.subheader,
  });

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();

  final String header, subheader;
}

class _HeaderWidgetState extends State<HeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20.0),
        Text(
          widget.header,
          style: const TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(width: 20.0),
        const Text(
          'This is a simple app.',
          style: TextStyle(
            fontSize: 16.0,
          ),
        ),
        const SizedBox(height: 20.0),
        Row(
          children: [
            // search bar
            Expanded(
              child: Container(
                height: 64.0,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Row(
                  children: [
                    SizedBox(width: 16.0),
                    Icon(Icons.search),
                    SizedBox(width: 16.0),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 16.0),
            // filter button
            Container(
              width: 64.0,
              height: 64.0,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: const Icon(Icons.filter_list),
            ),
          ],
        ),
      ],
    );
  }
}
