import 'package:flutter/material.dart';
import 'package:tutor_101/detail.dart';

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
            return ListTile(
              leading: Hero(
                tag: index,
                child: Container(
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    image: DecorationImage(
                      image: NetworkImage('https://picsum.photos/seed/$index/200'),
                      fit: BoxFit.cover
                    )
                  ),
                ),
              ),
              title: Text('Title $index'),
              subtitle: Text('Description $index'),
              trailing: Icon(Icons.navigate_next_rounded),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Detail('Hello $index', 'Description $index', 'https://picsum.photos/seed/1/200', index);
                }));
              }
            );
          }
        )
      ),
    );
  }
}
