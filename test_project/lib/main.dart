import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(nissan());
}

class nissan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('assets/my_pic.jpg'),
              ),
              Text(
                'Nissan Devnath',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 30.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Technology Enthusiast',
                style: TextStyle(
                  fontFamily: 'Dancing script',
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 2.5,
                ),
              ),
              SizedBox(
                height: 5.0,
                width: 200.0,
                child: Divider(
                  color: Colors.teal[100],
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                      Icons.email,
                  color: Colors.teal[700],),
                  title: Text(
                    'debnathnissan@gmail.com',
                    style: TextStyle(
                      fontFamily: 'Dancing script',
                      fontSize: 25.0,
                      color: Colors.teal[500]
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal[700],),
                  title: Text(
                    '01869019354',
                    style: TextStyle(
                        fontFamily: 'Dancing script',
                        fontSize: 25.0,
                        color: Colors.teal[500]
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
