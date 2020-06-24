import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: NetworkImage(
                    'https://library.kissclipart.com/20180919/zq/kissclipart-male-avatar-clipart-avatar-clip-art-79e75c03fce6671d.jpg'),
              ),
              Text(
                'Humza Salman',
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.amber,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Student',
                style: TextStyle(
                  fontSize: 26,
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(
                height: 20,
                width: 200,
                child: Divider(
                  color: Colors.teal.shade200,
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal.shade900,
                  ),
                  title: Text(
                    '+1 123 456 789',
                    style: TextStyle(
                      letterSpacing: 1.5,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal.shade900,
                  ),
                  title: Text(
                    'Humza@email.com',
                    style: TextStyle(
                      letterSpacing: 1.5,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
