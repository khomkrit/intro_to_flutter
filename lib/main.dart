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
            _buildTile('Title 1'),
            _buildTile('Title 2'),
            _buildTile('Title 3'),
            _buildTile('Title 4'),
            _buildTile('Title 5'),
            _buildTile('Title 4'),
          ],
        ),
      ),
    );
  }

  Widget _buildTile(String title) {
    return Container(
      // color: Colors.red,
      width: double.infinity,
      height: 100,
      child: Row(
        children: [
          Container(
            width: 80,
            height: 80,
            color: Colors.white,
            margin: EdgeInsets.only(left: 10),
            child: Center(
              child: Image.asset('images/image.jpg'),
            ),
          ),
          Expanded(
            child: Container(
              height: 80,
              margin: EdgeInsets.only(left: 10),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Title'),
                  Text('Description')
                ]
              ),
            )
          ),
          Icon(Icons.navigate_next_rounded)
        ],
      ),
    );
  }
}
