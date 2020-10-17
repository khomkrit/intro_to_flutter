import 'package:flutter/material.dart';

class Detail extends StatelessWidget {

  final String title;
  final String description;
  final String imagePath;
  final int tag;

  Detail(this.title, this.description, this.imagePath, this.tag);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(this.title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: this.tag,
              child: Image.network(this.imagePath),
            ),
            SizedBox(height: 20),
            Text(this.description)
          ],
        )
      ),
    );
  }
}