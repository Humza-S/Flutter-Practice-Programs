import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('I am Poor'),
            backgroundColor: Colors.black,
          ),
          body: Center(
            child: Image(
              image: NetworkImage(
                  'https://i.pinimg.com/originals/7d/ee/4b/7dee4bf1e6b48c682ce73781fec4d765.png'),
            ),
          )),
    );
  }
}
