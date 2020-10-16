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
        body: ListView.builder(
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            return _buildTile(
              imagePath: 'https://picsum.photos/seed/$index/200',
              title: 'Title $index', 
              description: 'Description $index');
          }
        )
      ),
    );
  }

  Widget _buildTile({ String imagePath, String title, String description }) {
    return Container(
      width: double.infinity,
      height: 100,
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              image: DecorationImage(
                image: NetworkImage(imagePath)
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
                  Text(title, style: TextStyle(
                    fontWeight: FontWeight.w600
                  )),
                  Text(description, style: TextStyle(
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
