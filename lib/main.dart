import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Hello Flutter')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              color: Colors.red,
              width: 100,
              height: 100,
              child: Center(
                child: Text('Item 1'),
              ),
            ),
            Text('Item 2'),
            Text('Item 3'),
            Text('Item 4'),
            Text('Item 5'),
          ],
        ),
      ),
    );
  }
}
