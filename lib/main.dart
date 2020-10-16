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
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildTile('Title 1'),
              _buildTile('Title 2'),
              _buildTile('Title 3'),
              _buildTile('Title 4'),
              _buildTile('Title 5'),
              _buildTile('Title 6'),
              _buildTile('Title 7'),
              _buildTile('Title 8'),
              _buildTile('Title 9'),
              _buildTile('Title 10'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTile(String title) {
    return Container(
      width: double.infinity,
      height: 100,
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              image: DecorationImage(
                image: AssetImage('images/image.jpg')
              )
            ),
            width: 80,
            height: 80,
            margin: EdgeInsets.only(left: 10),
          ),
          Expanded(
            child: Container(
              height: 80,
              margin: EdgeInsets.only(left: 10),
              padding: EdgeInsets.only(top: 5, bottom: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Title', style: TextStyle(
                    fontWeight: FontWeight.w600
                  )),
                  Text('Description', style: TextStyle(
                    color: Colors.black54
                  )),
                  Spacer(),
                  Text('16 Oct 2020', style: TextStyle(
                    color: Colors.black54,
                    fontSize: 11
                  )),
                ]
              ),
            )
          ),
          Icon(Icons.navigate_next_rounded, color: Colors.blueAccent,),
          SizedBox(width: 5,)
        ],
      ),
    );
  }
}
