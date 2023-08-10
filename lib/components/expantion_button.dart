import 'package:flutter/material.dart';

class MyButtonExpansion extends StatefulWidget {
  const MyButtonExpansion({super.key});

  @override
  _MyButtonExpansionState createState() => _MyButtonExpansionState();
}

class _MyButtonExpansionState extends State<MyButtonExpansion> {
  bool isExpanded = false;

  void _toggleExpand() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button Expansion Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: _toggleExpand,
              child: const Text('Expand'),
            ),
            const SizedBox(height: 20),
            if (isExpanded)
              GestureDetector(
                onTap: _toggleExpand,
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Lorem Ipsum',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac metus eget lectus venenatis elementum. Sed euismod diam eget nunc suscipit, nec ullamcorper dui vestibulum.',
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Praesent bibendum, enim ut sagittis malesuada, odio justo blandit purus, non fermentum urna lectus eu leo.',
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
